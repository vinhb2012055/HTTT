<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đăng nhập / Đăng ký</title>
  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- MDB UI Kit CSS -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .card {
      margin-top: 50px;
    }
    .btn-block {
      width: 100%;
    }
    .form-container {
      margin-top: 50px;
    }
    .hidden {
      display: none;
    }
  </style>
  <script>
    function showForm(formId) {
      document.getElementById('loginForm').classList.add('hidden');
      document.getElementById('registerForm').classList.add('hidden');
      document.getElementById(formId).classList.remove('hidden');
    }
  </script>
</head>
<body>
  <div class="container">
    <div class="row justify-content-center form-container">
      <div class="col-md-6 text-center">
        <button onclick="showForm('loginForm')" class="btn btn-primary mb-4">Đăng nhập</button>
        <button onclick="showForm('registerForm')" class="btn btn-secondary mb-4">Đăng ký</button>
      </div>
    </div>
    
    <!-- Login Form -->
    <div id="loginForm" class="row justify-content-center form-container hidden">
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title text-center">Đăng nhập</h5>
            <form action="dangnhap-xuly.php" method="POST">
              <!-- Email input -->
              <div data-mdb-input-init class="form-outline mb-4">
                <input type="email" id="form2Example1" name="email" class="form-control" required />
                <label class="form-label" for="form2Example1">Địa chỉ email</label>
              </div>

              <!-- Password input -->
              <div data-mdb-input-init class="form-outline mb-4">
                <input type="password" id="form2Example2" name="password" class="form-control" required />
                <label class="form-label" for="form2Example2">Mật khẩu</label>
              </div>

              <!-- 2 column grid layout for inline styling -->
              <div class="row mb-4">
                <div class="col d-flex justify-content-center">
                  <!-- Checkbox -->
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="form2Example31" name="remember" checked />
                    <label class="form-check-label" for="form2Example31"> Ghi nhớ tôi </label>
                  </div>
                </div>

                <div class="col text-right">
                  <!-- Simple link -->
                  <a href="#!">Quên mật khẩu?</a>
                </div>
              </div>

              <!-- Submit button -->
              <button type="submit" class="btn btn-primary btn-block mb-4">Đăng nhập</button>

              <!-- Register buttons -->
              <div class="text-center">
                <p>Chưa là thành viên? <a href="#!" onclick="showForm('registerForm')">Đăng ký</a></p>
                <p>hoặc đăng nhập với:</p>
                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-facebook-f"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-google"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-twitter"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-github"></i>
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- Registration Form -->
    <div id="registerForm" class="row justify-content-center form-container hidden">
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title text-center">Đăng ký</h5>
            <form action="dangky-xuly.php" method="POST">
              <!-- Email input -->
              <div data-mdb-input-init class="form-outline mb-4">
                <input type="email" id="form3Example1" name="email" class="form-control" required />
                <label class="form-label" for="form3Example1">Địa chỉ email</label>
              </div>

              <!-- Password input -->
              <div data-mdb-input-init class="form-outline mb-4">
                <input type="password" id="form3Example2" name="password" class="form-control" required />
                <label class="form-label" for="form3Example2">Mật khẩu</label>
              </div>

              <!-- Confirm Password input -->
              <div data-mdb-input-init class="form-outline mb-4">
                <input type="password" id="form3Example3" name="confirm_password" class="form-control" required />
                <label class="form-label" for="form3Example3">Xác nhận mật khẩu</label>
              </div>

              <!-- Submit button -->
              <button type="submit" class="btn btn-primary btn-block mb-4">Đăng ký</button>

              <!-- Register buttons -->
              <div class="text-center">
                <p>hoặc đăng ký với:</p>
                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-facebook-f"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-google"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-twitter"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-github"></i>
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- jQuery and Bootstrap Bundle (includes Popper) -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- MDB UI Kit -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</body>
</html>
