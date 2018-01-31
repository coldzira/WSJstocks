<html>
<head>
    <title>SQL SELECT Statement</title>
</head>
<body>
<table align="center" border="1">
<?php
    $cnx = new mysqli('localhost', 'atahabdi', '', 'stocks');

    if ($cnx->connect_error)
        die('Connection failed: ' . $cnx->connect_error);

    $query = 'SELECT * FROM stockinfo';
    $cursor = $cnx->query($query);
    while ($row = $cursor->fetch_assoc()) {
        echo '<tr>';
        echo '<td>' . $row['exchange'] . '</td><td>' . $row['symbol'] . '</td><td>' . $row['company'] .'</td><td>' . $row['volume'] .'</td><td>' . $row['price'] .'</td><td>' . $row['difference'] .'</td>';
        echo '</tr>';
    }

    $cnx->close();
?>
</table>
</body>
</html>