<?php
session_start();
$_SESSION['thong_bao'] = []; // Xóa thông báo
echo json_encode(['success' => true]);
?>


<!-- 
                <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="tab-register">
                  
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
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Chọn chức vụ</option>
                                <option value="1">Nhân viên</option>
                                <option value="2">Quản trị viên</option>
                            </select>
                        </div>

                        <div class="form-check d-flex justify-content-center mb-4">
                            <input class="form-check-input me-2" type="checkbox" value="" id="registerCheck" checked
                                aria-describedby="registerCheckHelpText" />
                            <label class="form-check-label" for="registerCheck">
                                I have read and agree to the terms
                            </label>
                        </div>

                        <button type="submit" class="btn btn-primary btn-block btn-register">Register</button> -->