<?php
$conn = @new mysqli('localhost', 'root', '', 'irc');
if($conn->connect_errno) die('Serwer niedostępny');

if(isset($_POST['color']) && isset($_POST['nick']) && isset($_POST['message']) && isset($_POST['uid']))
    $conn->query("UPDATE irc SET time='".date('H:i:s')."', color='$_POST[color]', nick='$_POST[nick]', message='$_POST[message]', uid='$_POST[uid]' WHERE id=1") or die('Nie można zmienić rekordu');
$conn->close();
?>