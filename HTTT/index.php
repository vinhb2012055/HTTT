<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập - Đăng ký</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"> 
    <link rel="stylesheet" href="style.css">
</head>
<body>

<?php
session_start();
$error = ''; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['login'])) {
        $username = $_POST['loginName'];
        $password = $_POST['loginPassword'];

        // Validation (Add your validation logic here)
        // ...

        // Database interaction (Replace with your actual code)
        include 'connect.php'; 
        $stmt = $conn->prepare("SELECT id, password FROM users WHERE username = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            if (password_verify($password, $row['password'])) {
                $_SESSION['loggedin'] = true;
                $_SESSION['id'] = $row['id'];
                $_SESSION['username'] = $username; 
                header("location: welcome.php");
            } else {
                $error = "Sai tên đăng nhập hoặc mật khẩu.";
            }
        } else {
            $error = "Sai tên đăng nhập hoặc mật khẩu.";
        }
        $stmt->close();
        $conn->close();

    } elseif (isset($_POST['register'])) {
        $name = $_POST['registerName'];
        $username = $_POST['registerUsername'];
        $email = $_POST['registerEmail'];
        $password = $_POST['registerPassword'];
        $passwordRepeat = $_POST['registerRepeatPassword'];
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        // Validation (Add your validation logic here)
        // ...

        // Database interaction (Replace with your actual code)
        include 'connect.php'; 
        $stmt = $conn->prepare("INSERT INTO users (name, username, email, password) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("ssss", $name, $username, $email, $hashedPassword);
        if ($stmt->execute()) {
            $error = "Đăng ký thành công!";
        } else {
            $error = "Error: " . $sql . "<br>" . $conn->error;
        }

        $stmt->close();
        $conn->close();
    }
}
?>



<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="tab-login" data-mdb-pill-init href="#pills-login" role="tab"
                        aria-controls="pills-login" aria-selected="true">Login</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="tab-register" data-mdb-pill-init href="#pills-register" role="tab"
                        aria-controls="pills-register" aria-selected="false">Register</a>
                </li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
                    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                        <input type="hidden" name="login" value="1"> 
                        <div class="text-center mb-3">
                            <p>Sign in with:</p>
                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="fab fa-facebook-f"></i>
                            </button>
                            </div>

                        <p class="text-center">or:</p>

                        <div class="form-outline mb-4">
                            <input type="email" id="loginName" name="loginName" class="form-control" />
                            <label class="form-label" for="loginName">Email or username</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="password" id="loginPassword" name="loginPassword" class="form-control" />
                            <label class="form-label" for="loginPassword">Password</label>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>
                        <div class="text-center">
                            <p>Not a member? <a href="#pills-register" data-mdb-toggle="pill">Register</a></p>
                        </div>
                    </form>
                </div>

                <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="tab-register">
                    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                        <input type="hidden" name="register" value="1"> 
                        </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
