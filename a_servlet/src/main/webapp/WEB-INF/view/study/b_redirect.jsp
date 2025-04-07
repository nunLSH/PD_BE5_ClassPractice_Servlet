<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
<body>

<header class="header">
    <nav class="navbar white">
        <div class="nav-wrapper ">
            <a href="/" class="brand-logo grey-text">Grepp</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down grey-text">
                <li><a href="/member/login" class="grey-text">sign in</a></li>
                <li><a href="badges.html" class="grey-text">sign up</a></li>
            </ul>
        </div>
    </nav>
</header>

<main class="container">
    <h4>C_redirect</h4>
    <div class="row">
        <form class="col s12" action="/redirect/signup" method="post">
            <div class="row">
                <div class="input-field col s7 ">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="email" name="email" type="email" placeholder="email"
                           class="validate">
                </div>
                <div class="input-field col s7 ">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="password" name="password" type="password" placeholder="password"
                           class="validate">
                </div>
                <div class="input-field col s7 ">
                    <i class="material-icons prefix">phone</i>
                    <input id="phone" name="phone" type="tel" placeholder="tel" class="validate">
                </div>
            </div>
            <button class="btn waves-effect waves-light offset-s1" type="submit" name="action">
                Submit
                <i class="material-icons right">send</i>
            </button>
        </form>
    </div>

</main>

<footer class="page-footer">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize
                    your
                    footer content.</p>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            © 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
        </div>
    </div>
</footer>

</body>
</html>