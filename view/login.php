<?php $home = mysqli_fetch_array($data); ?>

<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title><?php echo $home['nama'];?> | Login </title>

  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bootstrap/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="bootstrap/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="bootstrap/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="bootstrap/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="bootstrap/dist/css/skins/_all-skins.min.css">

  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link rel="shortcut icon" href="logo/bm.jpeg">

</head>

<body style="background: linear-gradient(to right,#60CEFF, #48D1CC);background: url(logo/bg21.jpg)no-repeat center center fixed;-webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">

  <body class="hold-transition login-page" style="background: linear-gradient(to right,#87CEFA, #48D1CC);">
    <br>
    <table width="100%">
      <tr>
        <td align="center" width="15%">
          <img src="logo/bm.jpeg" style="width: 100px;">
        </td>
        <td width="85%">
          <h2><b style="color: White;">Sistem Informasi Kenaikan Pangkat, Kenaikan Gaji Berkala dan Arsip
              Kepegawaian<?php echo $home['nama'];?><br>
              <?php echo $home['instansi'];?></b></h2>
          <p style="color: black;text-shadow: 0 0 5px white;"><b><?php echo $home['alamat'];?></b></p>
        </td>
      </tr>
    </table>


    <div class="col-md-8 col-lg-8"></div>
    <div class="col-md-4 col-lg-4">
      <div class="box box-info">
        <div class="box-header with-border bg-blue">
          <center>
            <h3 class="box-title">Form Login</h3>
          </center>
        </div>
        <br>
        <form class="form-horizontal" method="post" action="proses?valid=sistem&method=validasi">
          <div class="box-body">
            <div class="form-group" style="padding-right: 40px;padding-left: 40px;">
              <table width="100%">
                <tr>
                  <td width="30%">
                    <div class="form-group has-feedback">
                      Username
                    </div>
                  </td>
                  <td width="70%">
                    <div class="form-group has-feedback">
                      <input type="text" name="username" class="form-control" placeholder="Username" required
                        oninvalid="this.setCustomValidity('Masukan Username Terlebih Dahulu')"
                        oninput="setCustomValidity('')">
                      <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td width="30%">
                    <div class="form-group has-feedback">
                      Password
                    </div>
                  </td>
                  <td width="70%">
                    <div class="form-group has-feedback">
                      <input type="password" name="password" class="form-control" placeholder="Password" required
                        oninvalid="this.setCustomValidity('Masukan Password Terlebih Dahulu')"
                        oninput="setCustomValidity('')">
                      <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                  </td>
                </tr>
              </table>
            </div>
            <div class="form-group" style="padding-left: 20px;padding-right: 20px;">
              <center>
                <button type="submit" class="btn btn-primary block  m-b">Masuk</button></center><br>
              <a href="daftar/" class="pull-left">Buat Akun</a>
              <a href="lost/" class="pull-right">lupa Password ??</a>
              <br>
            </div>
            <hr>
            <div class="form-group" style="padding-left: 20px;padding-right: 20px;">
              <center>
                <a href="https://www.facebook.com/<?php echo $home['fb'];?>" target="_blank" title="Facebook"
                  class="btn btn-primary" style="border-radius: 100px;width: 38px;height: 38px"><i
                    class="fa fa-facebook"></i></a>
                <i class="fa fa-fw"></i>

                <a href="https://www.twitter.com/<?php echo $home['twitter'];?>" target="_blank" title="Twitter"
                  class="btn btn-info" style="border-radius: 100px;width: 38px;height: 38px"><i
                    class="fa fa-twitter"></i></a>

                <i class="fa fa-fw"></i>
                <a href="https://www.instagram.com/<?php echo $home['ig'];?>" title="Instagram" target="_blank"
                  class="btn btn-danger" style="border-radius: 100px;width: 38px;height: 38px"><i
                    class="fa fa-instagram"></i></a>

                <i class="fa fa-fw"></i>
                <a href="https://drive.google.com/" target="_blank" title="Download Versi Android"
                  class="btn btn-success" style="border-radius: 100px;width: 38px;height: 38px"><i
                    class="fa fa-android"></i></a>
            </div>
          </div>
        </form>
      </div>
    </div>
    <script src="bootstrap/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="bootstrap/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  </body>

</html>