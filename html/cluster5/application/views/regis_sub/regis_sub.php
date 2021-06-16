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
                            <div class="table-responsive">
                                <table class="table">
                                    <thead class=" text-info">
                                        <th>
                                            ลำดับ
                                        </th>
                                        <th>
                                            ชื่อชุมนุม
                                        </th>
                                        <th>
                                            อาจารย์ที่ปรึกษา
                                        </th>
                                        <th>
                                            จำนวนรับ
                                        </th>
                                        <th>
                                            ดำเนินการ
                                        </th>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
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
</body>

</html>