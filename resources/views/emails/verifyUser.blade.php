<!DOCTYPE html>
<html>
  <head>
    <title>Welcome Email</title>
  </head>
  <body>
    <h2>Welcome to the InstantSewa Family {{$user['name']}}</h2>
    <br/>
    Your registered email-id is {{$user['email']}}
    <br/>
    The verification code is {{$user['verification_token']}}
    <br/>
  </body>
</html>