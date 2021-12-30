<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login Template</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/login/css/login.css">
</head>
<body>
  <main class="d-flex min-vh-100 align-items-center p-4 p-md-0">
    <div class="container">
      <div class="row">
        <div class="col-md-6 intro-section">
          <div class="intro-content-wrapper">
            <div class="brand-wrapper">
              <img src="resources/login/images/logo.svg" alt="logo" class="logo">
            </div>
            <h1 class="intro-title">Welcome to website !</h1>
            <p class="intro-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
              labore et dolore magna aliqua</p>
            <a href="#!" class="btn signup-link-btn">Get an account</a>
          </div>
        </div>
        <div class="col-md-6 form-secion">
          <div class="login-wrapper">
            <h2 class="login-title">Log in</h2>
            <form action="#!">
                <div class="form-group">
                  <label for="email" class="sr-only">Email</label>
                  <input type="email" name="email" id="email" class="form-control" placeholder="Email">
                </div>
                <div class="form-group">
                  <label for="password" class="sr-only">Password</label>
                  <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                </div>
                <div class="d-flex align-items-center justify-content-between">
                  <input name="login" id="login" class="btn login-btn" type="button" value="Login">
                  <a href="#!" class="forgot-password-link">Forgot password?</a>
                </div>
              </form>
          </div>
        </div>
      </div>
    </div>
  </main>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
