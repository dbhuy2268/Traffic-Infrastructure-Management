function getDetail(id) {
    //console.log(id);
    let temp = '';
    let urls = "Details_YeuCau/"
    urls = urls.concat(String(id))
    $.ajax({
        url: urls,
        type: "GET"
    }).done(function (data) {
        //console.log(data);
        $('#DetailModal').modal('show');
        ////$('#DetailModal').on('show.bs.modal', function (result) {
        
        ////})
        //var temp = JSON.parse(data);
        temp_chosenID = id;
        $('#Input_TenChuSoHuu').val(data.tenChuSoHuu);
        $('#Input_CMND').val(data.cmnD_HoChieu);
        $('#Input_NgayCap').val(data.ngayCap_CMND_HoChieu);
        $('#Input_DiaChi').val(data.diaChiThuongTru);
        $('#Input_SoDienThoai').val(data.sdt);
        $('#Input_LoaiTaiSan').val(data.loaiTaiSan);
        $('#Input_SoLoai').val(data.soLoai);
        $('#Input_LoaiXe').val(data.loaiXe);
        $('#Input_NhanHieu').val(data.nhanHieu);
        $('#Input_MauSon').val(data.mauSon);
        $('#Input_NamSX').val(data.namSanXuat);
        $('#Input_XiLanh').val(data.xiLanh);
        $('#Input_SoKhung').val(data.soKhung);
        $('#Input_SoMay').val(data.soMay);


        for (let i = 0; i < data.hoSo.length; i++) {
            html_temp = '<tr id = "row_' + String(i) + '">\
                    <th style="width: 10%" scope="row">'+ String(i+1) + '</th>\
                    <td style="width: 15%">'+ data.hoSo[i].maHoSo + '</td>\
                    <td style="width: 15%">'+ data.hoSo[i].loaiHoSo + '</td>\
                    <td style="width: 45%">'+ data.hoSo[i].moTaChiTiet + '</td>\
                    <td style="width: 15%">'+ data.hoSo[i].noiCap + '</td>\
                </tr>\n';
            document.getElementById('tbody').innerHTML += html_temp;
        }
    })
}

function duyetYeuCau(id) {
    console.log(id);
    let temp = '';
    let urls = "XetDuyet_YeuCau/"
    urls = urls.concat(String(id))

    $.ajax({
        url: urls,
        type: "PUT"
    }).done(function (data) {
        console.log("PUT thành công")
        //console.log(data);
        //$('#DetailModal').modal('show');
        ////$('#DetailModal').on('show.bs.modal', function (result) {

        ////})
        //var temp = JSON.parse(data);

        //$('#Input_TenChuSoHuu').val(data.tenChuSoHuu);
        //$('#Input_CMND').val(data.cmnD_HoChieu);
        //$('#Input_NgayCap').val(data.ngayCap_CMND_HoChieu);
        //$('#Input_DiaChi').val(data.diaChiThuongTru);
        //$('#Input_SoDienThoai').val(data.sdt);
        //$('#Input_LoaiTaiSan').val(data.loaiTaiSan);
        //$('#Input_SoLoai').val(data.soLoai);
        //$('#Input_LoaiXe').val(data.loaiXe);
        //$('#Input_NhanHieu').val(data.nhanHieu);
        //$('#Input_MauSon').val(data.mauSon);
        //$('#Input_NamSX').val(data.namSanXuat);
        //$('#Input_XiLanh').val(data.xiLanh);
        //$('#Input_SoKhung').val(data.soKhung);
        //$('#Input_SoMay').val(data.soMay);


        //for (let i = 0; i < data.HoSo.length; i++) {
        //    html_temp = '<tr id = "row_' + String(i) + '">\
        //            <th style="width: 10%" scope="row">'+ String(i + 1) + '</th>\
        //            <td style="width: 15%">'+ data.HoSo[i].MaHoSo + '</td>\
        //            <td style="width: 15%">'+ data.HoSo[i].LoaiHoSo + '</td>\
        //            <td style="width: 45%">'+ data.HoSo[i].MoTaChiTiet + '</td>\
        //            <td style="width: 15%">'+ data.HoSo[i].NoiCap + '</td>\
        //        </tr>\n';
        //    document.getElementById('tbody').innerHTML += html_temp;
        //}
        location.reload();
    })
}