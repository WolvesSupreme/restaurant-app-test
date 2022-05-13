<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="<?php echo constant('URL'); ?>public/css/login.css">
</head>

<body>
    <?php $this->showMessages(); ?>
    <section id="login-items">

        <article class="login-left-col">
            <img src="<?php echo constant('URL'); ?>public/img/login.svg" alt="">
        </article>
        
        <article class="login-right-col">
            <h2 class='login-title'>account login</h2>

            <form action="<?php echo constant('URL'); ?>login/authenticate" class='login-form' method="POST">
                <div><?php (isset($this->errorMessage)) ?  $this->errorMessage : '' ?></div>
                <label for="username">
                    <h3 class='login-form-text'>Username</h3>
                </label>
                <input type="text" name="username" id="username" autocomplete="off" placeholder="Ingrese su user">

                <label for="password">
                    <h3 class='login-form-text'>password</h3>
                </label>
                <input type="password" name="password" id="password" autocomplete="off" placeholder="Password">

                <p>
                    ¿No tienes cuenta? <a href="<?php echo constant('URL'); ?>signup">Registrarse</a>
                </p>

                <button> sign In</button>

            </form>

        </article>

    </section>
</body>

</html>