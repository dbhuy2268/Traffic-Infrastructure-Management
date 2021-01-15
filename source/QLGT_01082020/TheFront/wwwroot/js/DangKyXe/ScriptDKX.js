function initListener() {
    var input_list = document.querySelectorAll('.input-register-form');

    for (let i of input_list) {
        i.addEventListener('change', function (event) {
            checkContraint();
        })
    }

    var input_list = document.querySelectorAll('.input-HS-form');
    for (let i of input_list) {
        i.addEventListener('change', function (event) {
            checkHSContraint();
        })
    }


    document.getElementById('argee_checkbox').addEventListener('change', function (event) {
        checkContraint();
    })

    //$("#ThemHoSoModal").on('shown', function () {
    //    $('#btn_saveHoSo').removeAttr('onclick');
    //    $('#btn_saveHoSo').removeAttr('data-dismiss');
    //});

    //document.getElementById('FileUpload').addEventListener('change', function (e) {
    //    var file = e.target.files;
    //    console.log(file);
    //    if (file.length > 0) //have files
    //    {
    //        if (window.FormData !== undefined) {
    //            var fdata = new FormData();
    //            for (var i = 0; i < file.length; i++) {
    //                fdata.append("files", file[i]);
    //                console.log(fdata);
    //            }
    //            $.ajax({
    //                url: "YeuCauXin/UploadPic",
    //                type: "POST",
    //                data: fdata,
    //                contentType: false,
    //                processData: false,
    //                success: function (result) {
    //                    console.log(result);
    //                },
    //                error: function (err) {
    //                    consolt.log(err);
    //                }
    //            })
    //        }
    //        else {
    //            console.log('this browser does not support HTML5 file upload');
    //        }
    //    }
    //})
}

//function uploadFile(file) {
//    console.log(file);
//    if (file.length > 0) //have files
//    {
//        if (window.FormData !== undefined) {
//            var fdata = new FormData();
//            for (var i = 0; i < file.length; i++) {
//                fdata.append("files", file[i]);
//                console.log(fdata);
//            }
//            $.ajax({
//                url: "YeuCauXin/UploadPic",
//                type: "POST",
//                data: fdata,
//                contentType: false,
//                processData: false,
//                success: function (result) {
//                    console.log(result);
//                },
//                error: function (err) {
//                    consolt.log(err);
//                }
//            })
//        }
//        else {
//            console.log('this browser does not support HTML5 file upload');
//        }
//    }
//}

function checkContraint() {
    var input_list = document.querySelectorAll('.input-register-form');

    var isHavingHoSo = ListHoSo.length != 0;
    var checkbox_isChecked = $('#argee_checkbox').is(':checked');
    var isAllFilled = true;

    for (let j of input_list) {
        isAllFilled = isAllFilled && (j.value.trim().length != 0)
        if (!isAllFilled)
            break;
    }
    if (isAllFilled && checkbox_isChecked && isHavingHoSo) {
        console.log('active');
        $('#btn_nopToKhai').removeClass('button-disable');
        $('#btn_nopToKhai').addClass('button-active');
        $('#btn_nopToKhai').attr('onclick', 'addYeuCauXin();');
        //$('#btn_nopToKhai').attr('data-toggle', 'modal');
        //$('#btn_nopToKhai').attr('data-target', '#AgreeModal');
    }
    else if ($('#btn_nopToKhai').hasClass('button-active')) {
        console.log('disable');
        $('#btn_nopToKhai').removeClass('button-active');
        $('#btn_nopToKhai').addClass('button-disable');
        $('#btn_nopToKhai').removeAttr('onclick');
        //$('#btn_nopToKhai').removeAttr('data-toggle');
        //$('#btn_nopToKhai').removeAttr('data-target');
    }

    console.log(isAllFilled);
    console.log(checkbox_isChecked);
    console.log(isHavingHoSo);
    isAllFilled = true;
}

function checkHSContraint() {

    let MaHoSo = $('#Input_MaHoSo').val() !== ''
    let LoaiHoSo = $('#Input_LoaiHoSo').val() !== ''
    let NoiCap = $('#Input_NoiCapHS').val() !== ''
    let MoTaChiTiet = $('#Input_MoTaChiTiet').val() !== ''
    console.log(MaHoSo);
    console.log(LoaiHoSo);
    console.log(NoiCap);
    console.log(MoTaChiTiet);

    if (MaHoSo && LoaiHoSo && NoiCap && MoTaChiTiet) {
        $('#btn_saveHoSo').attr('onclick', 'addRow();');
        $('#btn_saveHoSo').attr('data-dismiss', 'modal');
    }
    else {
        $('#btn_saveHoSo').removeAttr('onclick');
        $('#btn_saveHoSo').removeAttr('data-dismiss');
    }
}

//function checkConstraint_registerButton() {
//    var input_list = document.querySelectorAll('.input-register-form');
//    var isAllFilled = true;

//    for (let j of input_list) {
//        console.log(j.value);
//        isAllFilled = isAllFilled && (j.value.trim().length != 0)
//        console.log(isAllFilled);
//        if (!isAllFilled)
//            break;
//    }
//}


function addRow() {
    //var row_list = document.querySelectorAll("tbody tr");
    var ID = 1;
    //var file = document.getElementById('FileUpload').files;
    if (ListHoSo.length != 0) {
        ID = ListHoSo.length + 1;
    }

    var TempHoSo = {
        id: ID - 1,
        MaHoSo: $('#Input_MaHoSo').val(),
        LoaiHoSo: $('#Input_LoaiHoSo').val(),
        NoiCap: $('#Input_NoiCapHS').val(),
        MoTaChiTiet: $('#Input_MoTaChiTiet').val()
        //DiaChiLuu: "C:\\Users\\Admin\\source\\repos\\DataRepository\\WebApplication3\\Pic\\" + file['name']
    }
    ListHoSo.push(TempHoSo);
    html_temp = '<tr id = "row_' + String(TempHoSo.id) + '">\
                    <th style="width: 5%" scope="row">'+ String(TempHoSo.id) + '</th>\
                    <td style="width: 15%">'+ TempHoSo.MaHoSo + '</td>\
                    <td style="width: 15%">'+ TempHoSo.LoaiHoSo + '</td>\
                    <td style="width: 45%">'+ TempHoSo.MoTaChiTiet + '</td>\
                    <td style="width: 15%">'+ TempHoSo.NoiCap + '</td>\
                    <td style="width: 5%">\
                        <button id="our_table_button_'+ String(TempHoSo.id) + '" class="our-table-button" onclick="deleteRow(this.id)">\
                            <span style="background-color:none" class="fas fa-minus"></span>\
                        </button>\
                    </td>\
                </tr>\n';

    $('#alt_emptyHoSo').remove();
    document.getElementById('tbody').innerHTML += html_temp;
    $('#Input_MaHoSo').val('');
    $('#Input_LoaiHoSo').val('');
    $('#Input_NoiCapHS').val('');
    $('#Input_MoTaChiTiet').val('');


    // Close modal
    //$('#ThemHoSoModal').modal('hide');
    //$('body').removeClass('modal-open');
    //$('.modal-backdrop').remove();

    //uploadFile(file);
    //$('#FileUpload').val('');
    checkContraint();

    // reset button
    //$('#btn_saveHoSo').removeAttr('onclick');
    //$('#btn_saveHoSo').removeAttr('data-dismiss');
}


function deleteRow(id) {
    var temp = id.slice(-1);
    ListHoSo.splice(temp - 1, 1);
    document.getElementById('tbody').removeChild(document.getElementById('row_' + temp))
    //$.post("YeuCauXin/XoaHoSo", { jsonData: temp });
    checkContraint();
}


function addYeuCauXin() {
    let fail_flag = 0;
    var TempYeuCauXin = {
        id: 1,
        //MaYeuCau: $('Input_MaYeuCau').val(),
        TenChuSoHuu: $('#Input_TenChuSoHuu').val(),
        //NTNS $('NTNS').val(),
        CMND_HoChieu: $('#Input_CMND').val(),
        NgayCap_CMND_HoChieu: new Date($('#Input_NgayCap').val()),
        DiaChiThuongTru: $('#Input_DiaChi').val(),
        SDT: $('#Input_SoDienThoai').val(),
        LoaiTaiSan: $('#Input_LoaiTaiSan').val(),
        SoLoai: $('#Input_SoLoai').val(),
        LoaiXe: $('#Input_LoaiXe').val(),
        NhanHieu: $('#Input_NhanHieu').val(),
        MauSon: $('#Input_MauSon').val(),
        NamSanXuat: $('#Input_NamSX').val(),
        XiLanh: $('#Input_XiLanh').val(),
        SoKhung: $('#Input_SoKhung').val(),
        SoMay: $('#Input_SoMay').val(),
        //NoiCap: $('Input_NoiCap').val(),
        //NgayLamDon: new Date(),
        HoSo: ListHoSo
    };
    console.log(JSON.stringify(TempYeuCauXin));
    $.ajax({
        url: "Create_HoSo",
        type: "POST",
        //async: true,
        data: JSON.stringify(ListHoSo),
        contentType: "application/json"
    }).fail(function () {
        $('#FailModal').modal('show');
        fail_flag = 1;
        console.log("Gui HS That Bai");
    }).done(function () {
        console.log("Gui HS Thanh Cong");

        $.ajax({
            url: "Create_YeuCau",
            type: "POST",
            data: JSON.stringify(TempYeuCauXin),
            contentType: "application/json",
        }).fail(function () {
            $('#FailModal').modal('show');
            fail_flag = 1;
            console.log("Gui Yeu cau xin fail")
        }).done(function () {
            $('#AgreeModal').modal('show');

            $('Input_MaYeuCau').val('');
            $('#Input_TenChuSoHuu').val('');
            $('#NTNS').val('');
            $('#Input_CMND').val('');
            $('#Input_NgayCap').val('');
            $('#Input_DiaChi').val('');
            $('#Input_SoDienThoai').val('');
            $('#Input_LoaiTaiSan').val('');
            $('#Input_SoLoai').val('');
            $('#Input_LoaiXe').val('');
            $('#Input_NhanHieu').val('');
            $('#Input_MauSon').val('');
            $('#Input_NamSX').val('');
            $('#Input_XiLanh').val('');
            $('#Input_SoKhung').val('');
            $('#Input_SoMay').val('');
            $('#Input_NoiCap').val('');
            $('#argee_checkbox').prop('checked', false);
            ListHoSo = [];
            document.getElementById('tbody').innerHTML = '';
            checkContraint();
        })
    })
}


function checkConstraint_RegisterButton() {
    var input_list = document.querySelectorAll('input-register-form');
    var checkbox_isChecked = $('#argee_checkbox').is(':checked');

    for (let i of input_list) {
        console.log(i.nodeValue);
    }
    //var listHoSo_isEmpty = ListHoSo.length == 0;
    //var temp = false;
    //for (let i of input_list) {
    //    i.addEventListener('change', function (event) {
    //        for (let j of input_list) {
    //            temp = temp && (j.val().length == 0)
    //        }

    //    });

    //}
}


