<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>contact email</title>
</head>
<body>
    <h1>you have recevied an email</h1>

    <p>name: {{$mailData['name']}}</p>
    <p>email: {{$mailData['email']}}</p>
    <p>message:</p>
    <p>{{$mailData['message']}}</p>

    <p>thanks</p>
</body>
</html>