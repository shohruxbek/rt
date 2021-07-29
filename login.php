<?php
session_start();
$alert= "";
if(isset($_POST['submit'])){
    require_once "config.php";
    require_once "helpers.php";
    $sqdl3 = "SELECT * FROM `user`";
	$resultd3 = mysqli_query($link, $sqdl3);
    while($rowq3 = mysqli_fetch_array($resultd3)){
        $login = trim($_POST["login"]);
        $password = trim($_POST["password"]);
        if($rowq3['password']==sha1($password) and $rowq3['login']==$login){
            $_SESSION['login'] = $rowq3['login'];
            $_SESSION['name'] = $rowq3['name'];
            $_SESSION['id'] = $rowq3['id'];
            header('location:admin.php');
        }else{
            $alert =  '<div class="alert alert-danger alert-dismissible fade show">
            <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="mr-2"><polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
            <strong>Xatolik!</strong> Ma\'lumotlar noto\'g\'ri kiritildi.
            <button type="button" class="close h-100" data-dismiss="alert" aria-label="Close"><span><i class="mdi mdi-close"></i></span>
            </button>
            </div>';
        }

    }
    
}
include 'tepa.php';
?>

<div class="container" style="margin-top:100px">
    <div class="authincation h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
                                    <h4 class="text-center mb-4">Admin panelga kirish</h4>
                                    <div>   
                                        <?php
                                        echo $alert;
                                        ?>
                                    </div>
                                    <form action="" method="post">
                                        <div class="form-group">
                                            <label class="mb-1"><strong>Login</strong></label>
                                            <input type="text" name="login" class="form-control" value="">
                                        </div>
                                        <div class="form-group">
                                            <label class="mb-1"><strong>Parol</strong></label>
                                            <input type="password" name="password" class="form-control" value="">
                                        </div>
                                        <!-- <div class="form-row d-flex justify-content-between mt-4 mb-2">
                                            <div class="form-group">
                                                <a href="page-forgot-password.html">Parolni unutdingizmi?</a>
                                            </div>
                                        </div> -->
                                        <div class="text-center">
                                            <button type="submit" name="submit" class="btn btn-primary btn-block">Kirish</button>
                                        </div>
                                    </form>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<?php
include 'footer.php';
?>