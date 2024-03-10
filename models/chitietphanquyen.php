<?php
    function get_phanquyen_to_access_by_admin($maAdmin, $maPhanQuyen, $connect)
    {
        $sql = "SELECT COUNT(*) as COQUYEN FROM tbl_chitietphanquyen as ctpq, tbl_vaitro as vt, tbl_admin as admin WHERE admin.vaitro_id = vt.vaitro_id AND ctpq.vaitro_id = vt.vaitro_id and ctpq.phanquyen_id = $maPhanQuyen and admin.admin_id = $maAdmin";
        $query = mysqli_query($connect, $sql);
        $get_co_quyen = mysqli_fetch_assoc($query);
        $co_quyen = $get_co_quyen['COQUYEN'];
        if($co_quyen == 1)
            return true;
        else
            return false;
    }
?>