<?php
function main(){
$conn = @new mysqli('localhost', 'root', '', 'irc');
if($conn->connect_errno) die('Serwer niedostępny');

$time=time();
$rs = $conn->query("SELECT id, time, color, nick, message, uid FROM irc") or die('Nie można pobrać danych');
if($rs->num_rows>0){
    $data = $rs->fetch_array();
}
while(time()-$time <= 5){
    $new_rs = $conn->query("SELECT id, time, color, nick, message, uid FROM irc") or die('Nie można pobrać danych');
    if($new_rs->num_rows>0){
        $new_data = $new_rs->fetch_array();
        if($data!==$new_data){
            echo json_encode($new_data);
            break;
        }
    }
    usleep(200);
}
$conn->close();
}
main();
?>