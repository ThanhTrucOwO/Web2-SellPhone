<?php
    function get_vaitro_list($connect)
    {
        $sql = "SELECT * FROM tbl_vaitro";
        return mysqli_query($connect, $sql);
    }

?>