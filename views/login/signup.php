<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="<?php echo constant('URL'); ?>public/css/signup.css">
    <title>Sign Up</title>
    <style>
        .error {
            color: red;
            font-style: italic;
        }
    </style>
</head>

<body>
    <?php $this->showMessages(); ?>

    <section id="signup">
        <div class="caja signup-row">
            <article class="signup-left-col">
                <h2 class='signup-title'>Sign Up to join our community</h2>

                <form action="<?php echo constant('URL'); ?>signup/newUser" class='signup-form' id="registration" method="POST">
                    <div><?php (isset($this->errorMessage)) ?  $this->errorMessage : '' ?></div>
                    <label for="username">
                        <h5 className="contact-text">Username</h5>
                    </label>
                    <input type="text" class='form-control' name="username" placeholder="Ingrese username" id="username">

                    <label for="password">
                        <h5 className="contact-text">Password</h5>
                    </label>
                    <input type="password" class='form-control' name="password" placeholder='Ingrese password' id="password">

                    <p>
                        ¿Tienes una cuenta? <a href="<?php echo constant('URL'); ?>">Iniciar sesion</a>
                    </p>

                    <button> Sign In</button>

                </form>

            </article>

            <article class="signup-right-col">
                <img src="<?php echo constant('URL'); ?>public/img/registred.svg" alt="">
            </article>

        </div>
    </section>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
    <script src="public/js/validator.js"></script>
</body>

</html>