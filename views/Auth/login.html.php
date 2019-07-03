<?php require_once($_SERVER['DOCUMENT_ROOT'] . '/appcreatuity/views/partials/header.html.php') ?>

<h1>Formularz logowania</h1>
<form method="POST" action="<?php echo APP_PATH; ?>controller/logincontroller.php">
    <div class="form-group">
        <label for="username">username</label>
        <input type="text" class="form-control" id="username" 
        aria-describedby="emailHelp" placeholder="Enter username" name="username">
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" placeholder="Password" name="password">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<?php require_once($_SERVER['DOCUMENT_ROOT'] . '/appcreatuity/views/partials/footer.html.php') ?>