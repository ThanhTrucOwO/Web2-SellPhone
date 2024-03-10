<?php
    session_start();
    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/user.php';

    //Require tập tin giao diện (View)
    require '../../views/admin/error/display.tpl.php';
?>