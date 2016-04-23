<?php
function Send_SMS($recp_no,$msg)
{
    // Install the library via PEAR or download the .zip file to your project folder.
// This line loads the library
require('/path/to/twilio-php/Services/Twilio.php');

$sid = "ACXXXXXX"; // Your Account SID from www.twilio.com/user/account
$token = "YYYYYY"; // Your Auth Token from www.twilio.com/user/account

$client = new Services_Twilio($sid, $token);
$message = $client->account->messages->sendMessage(
  '9991231234', // From a valid Twilio number
  $recp_no, // Text this number
  $msg
);

print $message->sid;
}


?>