<html lang='en'></html>
<head>
    <title> Machine Data.php </title>
    <link href="stylesheet.css" rel="stylesheet"/>
</head>

<body class="bg-info">
<div class="container-fluid col-md-6 offset-md-3">
    <div class="row">
        <div class="card mt=3">
            <h1>Plymouth City Libraries</h1>
            <ul>
                <li><a href="data.php">Home</a></li>
                <li><a href="index.php">Data</a></li>

            </ul>
            <?php

            $file_data = file_get_contents("data.json");
            $parsedJson = json_encode($file_data, true);

            echo $parsedJson;
            ?>
        </div>
    </div>
</div>
</body>