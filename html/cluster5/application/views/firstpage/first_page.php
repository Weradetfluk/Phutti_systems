<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>

  <body class="landing-page sidebar-collapse">

    <nav class="navbar navbar-expand-lg bg-info fixed-top">
      <div class="container">
      <img src="<?php echo base_url('assets/img/ph_logo.png'); ?>" style="width: 60px; height: 60px;"  alt="">
        <a class="navbar-brand" style="margin-left: 10px;" href="<?php echo base_url() . 'Ph_controller' ?>">ระบบรับสมัครชุมนุม</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="sr-only">Toggle navigation</span>
          <span class="navbar-toggler-icon"></span>
          <span class="navbar-toggler-icon"></span>
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="" style="font-size: 14px;">หน้าหลัก</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url() . 'Sub/Sub/show_sub_data' ?>" style="font-size: 14px;">ลงทะเบียนชุมนุม</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="" style="font-size: 14px;">เข้าสู่ระบบ</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    
    <div class="page-header header-filter"  style="background-image: url(' <?php echo base_url('assets/img/ph.jpg');  ?> ')">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h1 class="title">ระบบรับสมัครชุมนุม</h1>
          <h4>ระบบรับสมัครชุมนุม โรงเรียนพุทธิรังสีพิบูล</h4>
          <br>
          <a href="<?php echo base_url() . 'Sub/Sub/show_sub_data' ?>" target="_blank" class="btn btn-danger btn-raised btn-lg">
            ลงทะเบียน
          </a>
        </div>
      </div>
    </div>
  </div>

<div class="main main-raised">
  <div class="container">
    <div class="section text-center">
    <div class="row">
          <div class="col-md-8 ml-auto mr-auto">
            <h2 class="title">Let&apos;s talk product</h2>
            <h5 class="description">This is the paragraph where you can write more details about your product. Keep you user engaged by providing meaningful information. Remember that by this time, the user is curious, otherwise he wouldn&apos;t scroll to get here. Add a button if you want the user to see more.</h5>
          </div>
        </div>
    <div class="features">
          <div class="row">
            <div class="col-md-4">
              <div class="info">
                <div class="icon icon-info">
                 <i class='far fa-file' style='font-size:36px'></i>
                </div>
                <h4 class="info-title">ลดกระดาษ</h4>
                <p>ลดทรัพยากร ลดการใช้กระดาษเพื่อสิ่งแวดล้อม</p>
              </div>
            </div>
            <div class="col-md-4">
              <div class="info">
                <div class="icon icon-success">
                <i class='far fa-grin' style='font-size:36px'></i>
                </div>
                <h4 class="info-title">ใช้งานง่าย</h4>
                <p>ใช้งานง่าย สะดวก รวดเร็ว</p>
              </div>
            </div>
            <div class="col-md-4">
              <div class="info">
                <div class="icon icon-danger">
                <i class='fas fa-mobile-alt' style='font-size:36px'></i>
                </div>
                <h4 class="info-title">รองรับมือถือ</h4>
                <p>รองรับขนาดมือถือ</p>
              </div>
            </div>
          </div>
        </div>
    </div>
  </div>
</div>

<footer class="footer footer-default" >
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
        </script>, made with  by
         Werdet Nopsombun for a better web.
    </div>
  </div>
</footer>
    
  </body>

</html>
