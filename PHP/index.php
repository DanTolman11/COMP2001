<html lang='en'></html lang>

<head>
    <link href="stylesheet.css" rel="stylesheet"/>
    <title> Data.php </title>
</head>

<?php
    $fileString = file_get_contents("data.json");
    $parsedJson = json_decode($fileString, true);

    function outputRow($properties){ ?>

            <h1><?php $properties['LibraryName']?></h1>
            <span>Address: </span>
            <div>
                <?php echo getFullAddressFromProperties($properties);?>
                <a href="https://www.google.com/maps/search/?api=1&query=<?php echo $properties['Latitude'] ?>,<?php echo $properties['Longitude'] ?>">View on maps</a>
            </div>
<?php
    }

    function getFullAddressFromProperties($properties){
        $val = $properties['AddressLine1'] . $properties['AddressLine2'] . $properties['AddressLine3'] . $properties['Postcode'];

        return $val;
    }
?>

<body class="bg-info">
    <div class="container-fluid col-md-6 offset-md-3">
        <div class="row">
            <div class="card mt=3">
                <h1>Plymouth City Libraries</h1>
                <ul>
                    <li><a href="data.php">Home</a></li>
                    <li><a href="index.php">Data</a></li>
                    <li><a href="Libraries.php">Raw Data</a> </li>
                </ul>

                <?php
                //get features
                $feat = $parsedJson['features'];

                //loop all our features
                //for(String value : features)

                foreach($feat as $value){
                    //get properties from current feature
                    $props = $value['properties'];

                    //output
                    echo '<div>';
                        //loop all values of properties, as key and value
                        outputRow($props);

                    echo '</div>';
                } ?>
            </div>
        </div>
    </div>
</body>
