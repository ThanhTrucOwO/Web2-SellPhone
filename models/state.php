<?php
    function get_state_list($connect)
    {
        $sql = "SELECT * FROM tbl_state";
        return mysqli_query($connect, $sql);
    }
?>