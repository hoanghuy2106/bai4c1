<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Trang chào mừng</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #e6f0ff, #cce0ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .box {
            background-color: #fff;
            border: 2px solid #2980b9;
            border-radius: 15px;
            padding: 50px 40px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 600px;
            width: 90%;
        }

        h1 {
            color: #2980b9;
            font-size: 32px;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            color: #7f8c8d;
        }

        .username {
            font-weight: bold;
            color: #2980b9;
            animation: blink 1s infinite;
        }

        @keyframes blink {
            0%, 100% {
                opacity: 1;
            }
            50% {
                opacity: 0;
            }
        }
    </style>
</head>
<body>

<div class="box">
    <h1>Chào mừng <span class="username">Hoàng Tiến Huy</span>!</h1>
    <p>Thời gian hiện tại: <span id="clock"></span></p>
</div>

<script>
    function updateClock() {
        const now = new Date();
        const timeString = 
            String(now.getDate()).padStart(2, '0') + '-' +
            String(now.getMonth() + 1).padStart(2, '0') + '-' +
            now.getFullYear() + ' ' +
            String(now.getHours()).padStart(2, '0') + ':' +
            String(now.getMinutes()).padStart(2, '0') + ':' +
            String(now.getSeconds()).padStart(2, '0');
        document.getElementById('clock').textContent = timeString;
    }

    setInterval(updateClock, 1000);
    updateClock();
</script>

</body>
</html>
