<html>
<head>
    <title>Welcome</title>
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
          rel="stylesheet">
    <!--<link href="css/custom.css"
          rel="stylesheet"> -->
</head>
<body>
<div class="container">
    <table class="table table-striped">
        <caption>Values from RESTful Camel Service</caption>
        <thead>
        <tr>
            <th>Status</th>
            <th>Timestamp</th>
            <th>version</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${status}</td>
            <td>${timeStamp}</td>
            <td>${version}</td>
        </tr>
        </tbody>
    </table>
    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
</div>
</body>
</html>