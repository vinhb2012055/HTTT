<?php 
include("config.php");

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['login'])) {
    $loginName = $_POST['loginName'];
    $loginPassword = $_POST['loginPassword'];
    
    // Check if the fields are not empty
    if (!empty($loginName) && !empty($loginPassword)) {
        // Encrypt the password using MD5
        $loginPasswordMD5 = md5($loginPassword);
        
        // Prepare the SQL statement
        $sql = "SELECT nv_role FROM nhanvien WHERE (nv_ma = ? OR nv_sdt = ?) AND nv_matkhau = ?";
        $stmt = $conn->prepare($sql);
        if ($stmt === false) {
            die('Prepare failed: ' . htmlspecialchars($conn->error));
        }
        
        // Bind parameters
        $stmt->bind_param("sss", $loginName, $loginName, $loginPasswordMD5);
        
        // Execute the statement
        $stmt->execute();
        
        // Get the result
        $result = $stmt->get_result();
        
        if ($result->num_rows > 0) {
            // Fetch the role
            $row = $result->fetch_assoc();
            $role = $row['nv_role'];
            
            if ($role == "Nhân Viên") {
                echo "<script>alert('Bạn đã đăng nhập với vai trò Nhân viên'); window.location.href='nhanvien.php';</script>";
            } elseif ($role == "Quản trị viên") {
                echo "<script>alert('Bạn đã đăng nhập với vai trò Quản trị viên'); window.location.href='admin.php';</script>";
            }
        } else {
            echo "<script>alert('Invalid login credentials');</script>";
        }
        
        // Close the statement
        $stmt->close();
    } else {
        echo "<script>alert('Please fill in all fields');</script>";
    }
    
    // Close the connection
    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"> 
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <!-- Pills content -->
            <div class="tab-content">
                <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
                    <!-- Login Form -->
                    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                        <input type="hidden" name="login" value="1"> 
                        <div class="text-center mb-3">
                            <p>Login with:</p>
                            <button type="button" class="btn btn-primary btn-floating btn-facebook mx-1">
                                <i class="fab fa-facebook-f"></i>
                            </button>

                            <button type="button" class="btn btn-primary btn-floating btn-google mx-1">
                                <i class="fab fa-google"></i>
                            </button>

                            <button type="button" class="btn btn-primary btn-floating btn-twitter mx-1">
                                <i class="fab fa-twitter"></i>
                            </button>

                            <button type="button" class="btn btn-primary btn-floating btn-github mx-1">
                                <i class="fab fa-github"></i>
                            </button>
                        </div>

                        <p class="text-center">or:</p>

                        <div class="form-outline mb-4">
                            <input type="text" id="loginName" name="loginName" class="form-control" />
                            <label class="form-label" for="loginName">Username or phone number</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="password" id="loginPassword" name="loginPassword" class="form-control" />
                            <label class="form-label" for="loginPassword">Password</label>
                        </div>

                        <div class="row mb-4">
                            <div class="col-md-6 d-flex justify-content-center">
                            <!-- Checkbox -->
                            <div class="form-check mb-3 mb-md-0">
                                <input class="form-check-input" type="checkbox" value="" id="loginCheck" checked />
                                <label class="form-check-label" for="loginCheck"> Remember me </label>
                            </div>
                            </div>

                            <div class="col-md-6 d-flex justify-content-center">
                            <!-- Simple link -->
                            <a href="#!">Forgot password?</a>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block btn-signin">Sign in</button>
                    </form>
                </div>
            </div>
            <!-- Pills content -->
        </div>
    </div>
</div>
<!-- phần js -->
<script>
    // Add click effect to the buttons
    document.querySelectorAll('.btn-floating').forEach(button => {
        button.addEventListener('click', () => {
            button.classList.add('clicked');
            setTimeout(() => {
                button.classList.remove('clicked');
            }, 200);
        });
    });
</script>
<!-- hết phần js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
