<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign-in</title>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:300);

        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }

        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

        .form input {
            font-family: "Roboto", sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }

        .form button {
            font-family: "Roboto", sans-serif;
            text-transform: uppercase;
            outline: 0;
            background: #fed700;
            width: 100%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
        }

        .form button:hover, .form button:active, .form button:focus {
            background: #f4b900;
        }

        .form .message {
            margin: 15px 0 0;
            color: #b3b3b3;
            font-size: 12px;
        }

        .form .message a {
            color: #4CAF50;
            text-decoration: none;
        }

        .container .info h1 {
            margin: 0 0 15px;
            padding: 0;
            font-size: 36px;
            font-weight: 300;
            color: #1a1a1a;
        }

        .container .info span {
            color: #4d4d4d;
            font-size: 12px;
        }

        .container .info span a {
            color: #000000;
            text-decoration: none;
        }

        body {
            background: #f4b900; /* fallback for old browsers */
            background: -webkit-linear-gradient(right, #f4b900, #fed700);
            background: -moz-linear-gradient(right, #f4b900, #fed700);
            background: -o-linear-gradient(right, #f4b900, #fed700);
            background: linear-gradient(to left, #f4b900, #fed700);
            font-family: "Roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
    </style>

    <script>
        $('.message a').click(function () {
            $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
        });
    </script>
    <link rel="icon" href="/resources/img/fav-icon.png" type="image/x-icon"/>
</head>
<body>
<div class="login-page">
    <div class="form">
        <%--<form class="login-form">--%>
        <%--<input type="text" placeholder="username"/>--%>
        <%--<input type="password" placeholder="password"/>--%>
        <%--<button>login</button>--%>
        <%--<p class="message">Not registered? <a href="#">Create an account</a></p>--%>
        <%--</form>--%>

        <spring:form modelAttribute="productFromServer" method="post" action="/search/check">
            <spring:input path="name" placeholder="product name"/>
            <spring:button>Search</spring:button>
        </spring:form>

    </div>
</div>
</body>
</html>