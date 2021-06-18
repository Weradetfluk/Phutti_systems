<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-info fixed-top">
        <div class="container">
            <img src="<?php echo base_url('assets/img/ph_logo.png'); ?>" style="width: 60px; height: 60px;" alt="">
            <a class="navbar-brand" style="margin-left: 10px;" href="<?php echo base_url() . 'Ph_controller' ?>">ระบบรับสมัครชุมนุม</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="sr-only">Toggle navigation</span>
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo base_url() . 'Ph_controller' ?>" style="font-size: 14px;">หน้าหลัก</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link " href="<?php echo base_url() . 'Sub/Sub/show_sub_data' ?>" style="font-size: 14px;">ลงทะเบียนชุมนุม</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="" style="font-size: 14px;">เข้าสู่ระบบ</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="content" style="margin-top: 100px;">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-info">
                            <h4 class="card-title ">ตารางแสดงรายชื่อชุมนุม</h4>
                            <p class="card-category">ตารางแสดงรายชื่อชุมนุมของโรงเรียนพุทธิรังสีพิบูล</p>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive" id="table_sub">
             
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer footer-default fixed-bottom">
        <div class="container">
            <nav class="float-left">
                <ul>
                    <li>
                        Weradet Nopsombun
                    </li>
                </ul>
            </nav>
            <div class="copyright float-right">
                &copy;
                <script>
                    document.write(new Date().getFullYear())
                </script>, made with by
                Werdet Nopsombun for a better web.
            </div>
        </div>
    </footer>


    <script>
        $(document).ready(function() {
            get_data_ajax();
        });

        function get_data_ajax() {
            $.ajax({
                type: "POST",
                dataType: "JSON",
                url: '<?php echo base_url('Sub/Sub/show_sub_data_ajax');   ?>',
                success: function(res) {
                    console.log(res);
                    create_table(res)
                },
                error: function() {
                   
                }
            });
        }

        function create_table(arr_sub) {
        let html_code = '';

        html_code += '<table class="table table-striped" id="sub_tale">';
        html_code += '<thead class="text-info">';
        html_code += '<tr>';
        html_code += '<th   style="text-align: center;font-size: 16px;" >ลำดับ</th>';
        html_code += '<th   style="text-align: center;font-size: 16px;" >ชื่อชุมนุม</th>';
        html_code += '<th   style="text-align: center;font-size: 16px;" >อาจารย์ที่ปรึกษา</th>';
        html_code += '<th   style="text-align: center;font-size: 16px;"  >จำนวนรับ</th>';
        html_code += '<th   style="text-align: center;font-size: 16px;"  >ดำเนินการ</th>';
        html_code += '</tr>';
        html_code += ' </thead>';
        html_code += ' <tbody class="list">';



        arr_sub.forEach((row_tsm, index_tsm) => {

            html_code += '<tr>';
            html_code += '<td style="text-align: center; font-size: 18px;" >' + row_tsm['sub_id'] + '</td>';
            html_code += '<td style="text-align: center; font-size: 18px;" >' + row_tsm['sub_name'] + '</td>';
            html_code += '<td style="text-align: center; font-size: 18px;" >' + row_tsm['tea_firstname'] + ' ' + row_tsm['tea_lastname'] + '</td>';
            html_code += '<td style="text-align: center; font-size: 18px;  background-color: red;" >' + row_tsm['sub_limit'] + '</td>';
            html_code += '<td style="text-align: center; background-color: red;" >' + '<button class="btn btn-primary">สมัคร</button>' + '</td>';
      

            html_code += '</tr>';

        });


        html_code += '</tbody>';
        html_code += ' </table>';

        $('#table_sub').html(html_code);

        $('#sub_tale').dataTable({
            "ordering": false,
            colReorder: {
                realtime: true
            },
            "lengthMenu": [
                [10, 25, 50, -1],
                [10, 25, 50, "All"]
            ],
            searching: false
        });

    }
    </script>
</body>

</html>