<?php

/*require('Services/Twilio.php');

$account_sid = "ACf622ef4805750f804f8ee45d021650c1"; // Your Twilio account sid
$auth_token = "07d6a510e88d29092577860b8aa0a740"; // Your Twilio auth token

$client = new Services_Twilio($account_sid, $auth_token);
$message = $client->account->messages->sendMessage(
  '5713862599', // From a Twilio number in your account
  '+919441482605', // Text any number
  "Hello monkey!"
);*/
// Download the library and copy into the folder containing this file.
require('Services/Twilio.php');

$account_sid = "ACf622ef4805750f804f8ee45d021650c1"; // Your Twilio account sid
$auth_token = "07d6a510e88d29092577860b8aa0a740"; // Your Twilio auth token

$client = new Services_Twilio($account_sid, $auth_token);
$call = $client->account->calls->create(
  '+5713862599', // From a Twilio number in your account
  '+919441482605', // Call any number

  // Read TwiML at this URL when a call connects (hold music)
  'http://twimlets.com/holdmusic?Bucket=com.twilio.music.ambient'
);
?>