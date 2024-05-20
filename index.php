<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"> 
    <!-- phần css -->
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            max-width: 600px;
            padding: 20px;
            margin-top: 50px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .nav-pills .nav-link {
            border-radius: 0;
            color: #495057;
            font-weight: bold;
        }

        .nav-pills .nav-link.active {
            background-color: #007bff;
            color: #fff;
        }

        .form-outline {
            position: relative;
        }

        .form-outline input {
            padding: 1rem;
        }

        .form-outline input:focus ~ .form-label {
            transform: translateY(-1.25rem);
            font-size: 0.75rem;
            color: #007bff;
        }

        .form-outline label {
            position: absolute;
            top: 1rem;
            left: 1rem;
            transition: all 0.3s ease;
            pointer-events: none;
            font-size: 0.8rem;
        }

        .btn-floating {
            width: 3rem;
            height: 3rem;
            font-size: 1.5rem;
            border-radius: 50%;
            line-height: 3rem;
            text-align: center;
            transition: background-color 0.3s;
            margin: 0 0.5rem; /* Add margin between buttons */
        }

        .btn-floating i {
            line-height: inherit;
        }

        /* Facebook button */
        .btn-facebook {
            background-color: #3b5998;
            color: #fff;
        }

        /* Google button */
        .btn-google {
            background-color: #db4437;
            color: #fff;
        }

        /* Twitter button */
        .btn-twitter {
            background-color: #1da1f2;
            color: #fff;
        }

        /* Github button */
        .btn-github {
            background-color: #24292e;
            color: #fff;
        }

        /* Button hover effect */
        .btn-floating:hover {
            background-color: rgba(0, 0, 0, 0.1);
        }

        /* Click effect */
        .clicked {
            background-color: rgba(0, 0, 0, 0.1);
        }

        /* Make Sign In and Register buttons larger */
        .btn-signin,
        .btn-register {
            font-size: 1.25rem;
            padding: 1rem 2rem;
            margin-top: 1rem;
        }
    </style>
    <!-- hết phần css -->
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <!-- Pills navs -->
            <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="tab-login" data-bs-toggle="pill" href="#pills-login" role="tab"
                        aria-controls="pills-login" aria-selected="true">Login</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="tab-register" data-bs-toggle="pill" href="#pills-register" role="tab"
                        aria-controls="pills-register" aria-selected="false">Register</a>
                </li>
            </ul>
            <!-- Pills navs -->

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
                            <input type="email" id="loginName" name="loginName" class="form-control" />
                            <label class="form-label" for="loginName">Email or username</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="password" id="loginPassword" name="loginPassword" class="form-control" />
                            <label class="form-label" for="loginPassword">Password</label>
                        </div>
                              <!-- 2 column grid layout -->
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
                        <div class="text-center">
                            <p>Not a member? <a href="#pills-register" data-bs-toggle="pill">Register</a></p>
                        </div>
                    </form>
                </div>

                <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="tab-register">
                    <!-- Registration Form -->
                    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                        <input type="hidden" name="register" value="1"> 
                        <div class="text-center mb-3">
                            <p>Register with:</p>
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
                            <input type="text" id="registerName" name="registerName" class="form-control" />
                            <label class="form-label" for="registerName">Name</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="text" id="registerUsername" name="registerUsername" class="form-control" />
                            <label class="form-label" for="registerUsername">Username</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="email" id="registerEmail" name="registerEmail" class="form-control" />
                            <label class="form-label" for="registerEmail">Email</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="password" id="registerPassword" name="registerPassword" class="form-control" />
                            <label class="form-label" for="registerPassword">Password</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="password" id="registerRepeatPassword" name="registerRepeatPassword" class="form-control" />
                            <label class="form-label" for="registerRepeatPassword">Repeat password</label>
                        </div>

                        <div class="form-check d-flex justify-content-center mb-4">
                            <input class="form-check-input me-2" type="checkbox" value="" id="registerCheck" checked
                                aria-describedby="registerCheckHelpText" />
                            <label class="form-check-label" for="registerCheck">
                                I have read and agree to the terms
                            </label>
                        </div>

                        <button type="submit" class="btn btn-primary btn-block btn-register">Register</button>
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

