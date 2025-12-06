<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Enchanted Portal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(-45deg, #ff6b6b, #ff8e8e, #ffafaf, #ffd3d3, #a5deff, #74c0fc, #4dabf7, #339af0);
            background-size: 400% 400%;
            animation: gradient 18s ease infinite;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        @keyframes gradient {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        .container {
            position: relative;
            width: 450px;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            border-radius: 24px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1), 0 0 0 1px rgba(255, 255, 255, 0.2);
            padding: 40px;
            z-index: 10;
            transform: scale(0.9) translateY(20px);
            opacity: 0;
            animation: scaleUp 0.8s forwards 0.3s;
            overflow: hidden;
        }

        .container::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: linear-gradient(45deg, transparent, rgba(255,255,255,0.1), transparent);
            transform: rotate(45deg);
            animation: shine 6s infinite;
            z-index: -1;
        }

        @keyframes shine {
            0% {
                transform: rotate(45deg) translateX(-100%);
            }
            100% {
                transform: rotate(45deg) translateX(100%);
            }
        }

        @keyframes scaleUp {
            to {
                opacity: 1;
                transform: scale(1) translateY(0);
            }
        }

        .logo {
            text-align: center;
            margin-bottom: 30px;
            position: relative;
        }

        .logo i {
            font-size: 60px;
            color: white;
            margin-bottom: 10px;
            display: block;
            text-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            animation: float 3s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
        }

        .logo h1 {
            color: white;
            font-weight: 700;
            letter-spacing: 1px;
            font-size: 28px;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            background: linear-gradient(45deg, #fff, #e3f2fd, #fff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-size: 200% 200%;
            animation: shimmer 3s ease infinite;
        }

        @keyframes shimmer {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        .form-group {
            position: relative;
            margin-bottom: 25px;
        }

        .form-group input {
            width: 100%;
            padding: 16px 20px;
            background: rgba(255, 255, 255, 0.2);
            border: none;
            border-radius: 50px;
            color: white;
            font-size: 16px;
            outline: none;
            transition: all 0.4s;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .form-group input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .form-group input:focus {
            background: rgba(255, 255, 255, 0.3);
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.4);
            transform: scale(1.02);
        }

        .form-group i {
            position: absolute;
            right: 20px;
            top: 16px;
            color: white;
            font-size: 18px;
            transition: all 0.3s;
        }

        .form-group input:focus + i {
            transform: scale(1.2);
            color: #ffeb3b;
        }

        .name-fields {
            display: flex;
            gap: 15px;
        }

        .name-fields .form-group {
            flex: 1;
        }

        .password-strength {
            height: 6px;
            width: 100%;
            margin-top: 8px;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.2);
            overflow: hidden;
        }

        .strength-meter {
            height: 100%;
            width: 0;
            transition: width 0.5s, background 0.5s;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
        }

        .weak {
            width: 30%;
            background: linear-gradient(90deg, #ff6b6b, #ff8e8e);
        }

        .medium {
            width: 60%;
            background: linear-gradient(90deg, #ffd93d, #ff9a3d);
        }

        .strong {
            width: 100%;
            background: linear-gradient(90deg, #6bff6b, #3dff3d);
        }

        .terms {
            display: flex;
            align-items: center;
            margin-bottom: 25px;
            color: white;
            font-size: 14px;
        }

        .terms input {
            margin-right: 10px;
            transform: scale(1.2);
        }

        .terms a {
            color: #ffeb3b;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
        }

        .terms a:hover {
            text-decoration: underline;
            text-shadow: 0 0 10px rgba(255, 235, 59, 0.7);
        }

        .signup-btn {
            width: 100%;
            padding: 16px;
            background: linear-gradient(45deg, #ff6b6b, #ff8e8e, #ffafaf);
            border: none;
            border-radius: 50px;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.4s;
            margin-bottom: 25px;
            box-shadow: 0 10px 20px rgba(255, 107, 107, 0.3);
            position: relative;
            overflow: hidden;
        }

        .signup-btn:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 25px rgba(255, 107, 107, 0.4);
            background: linear-gradient(45deg, #ff8e8e, #ffafaf, #ff6b6b);
        }

        .signup-btn:active {
            transform: translateY(0);
        }

        .signup-btn::after {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: rgba(255, 255, 255, 0.1);
            transform: rotate(45deg);
            transition: all 0.5s;
        }

        .signup-btn:hover::after {
            transform: rotate(45deg) translate(10%, 10%);
        }

        .login-link {
            text-align: center;
            color: white;
        }

        .login-link a {
            color: white;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            display: inline-block;
            text-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            position: relative;
        }

        .login-link a::after {
            content: '';
            position: absolute;
            width: 100%;
            height: 2px;
            bottom: -5px;
            left: 0;
            background: white;
            transform: scaleX(0);
            transform-origin: right;
            transition: transform 0.3s;
        }

        .login-link a:hover {
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.7);
            transform: scale(1.05);
        }

        .login-link a:hover::after {
            transform: scaleX(1);
            transform-origin: left;
        }

        .floating-elements {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: 1;
        }

        .floating-element {
            position: absolute;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            animation: float 15s infinite linear;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.3);
        }

        @keyframes float {
            0% {
                transform: translateY(100vh) rotate(0deg);
            }
            100% {
                transform: translateY(-100px) rotate(360deg);
            }
        }

        .confetti {
            position: absolute;
            width: 10px;
            height: 10px;
            background: #ffeb3b;
            opacity: 0;
        }

        @keyframes confetti-fall {
            0% {
                transform: translateY(-100px) rotate(0deg);
                opacity: 1;
            }
            100% {
                transform: translateY(100vh) rotate(360deg);
                opacity: 0;
            }
        }

        .sparkle {
            position: absolute;
            width: 4px;
            height: 4px;
            background: white;
            border-radius: 50%;
            animation: sparkle 1.5s infinite;
            opacity: 0;
        }

        @keyframes sparkle {
            0%, 100% {
                opacity: 0;
                transform: scale(0);
            }
            50% {
                opacity: 1;
                transform: scale(1);
            }
        }

        .success-message {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(76, 175, 80, 0.9);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: white;
            border-radius: 24px;
            opacity: 0;
            transform: scale(0.8);
            transition: all 0.5s;
            z-index: 20;
            text-align: center;
            padding: 40px;
        }

        .success-message.show {
            opacity: 1;
            transform: scale(1);
        }

        .success-message i {
            font-size: 80px;
            margin-bottom: 20px;
            animation: bounce 1s;
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-20px);
            }
            60% {
                transform: translateY(-10px);
            }
        }
    </style>
</head>
<body>
<div class="floating-elements" id="floatingElements"></div>

<div class="container">
    <div class="success-message" id="successMessage">
        <i class="fas fa-check-circle"></i>
        <h2>TESTING CHANGES IRADA!</h2>
        <p>You're being redirected to the login page</p>
    </div>

    <div class="logo">
        <i class="fas fa-magic"></i>
        <h1>Create Your Account</h1>
    </div>

    <form id="signupForm">
        <div class="name-fields">
            <div class="form-group">
                <input type="text" placeholder="First Name" required>
                <i class="fas fa-user"></i>
            </div>

            <div class="form-group">
                <input type="text" placeholder="Last Name" required>
                <i class="fas fa-user"></i>
            </div>
        </div>

        <div class="form-group">
            <input type="email" placeholder="Email" required>
            <i class="fas fa-envelope"></i>
        </div>

        <div class="form-group">
            <input type="password" placeholder="Password" id="password" required>
            <i class="fas fa-lock"></i>
            <div class="password-strength">
                <div class="strength-meter" id="passwordStrength"></div>
            </div>
        </div>

        <div class="form-group">
            <input type="password" placeholder="Confirm Password" required>
            <i class="fas fa-lock"></i>
        </div>

        <div class="terms">
            <input type="checkbox" id="terms" required>
            <label for="terms">I agree to the <a href="#">Terms and Conditions</a></label>
        </div>

        <button type="submit" class="signup-btn">Create Account</button>

        <div class="login-link">
            Already have an account? <a href="login.html">Sign In</a>
        </div>
    </form>
</div>

<script>
    // Create floating elements
    function createFloatingElements() {
        const container = document.getElementById('floatingElements');
        const elementCount = 20;

        for (let i = 0; i < elementCount; i++) {
            const element = document.createElement('div');
            element.classList.add('floating-element');

            // Random size
            const size = Math.random() * 100 + 20;
            element.style.width = `${size}px`;
            element.style.height = `${size}px`;

            // Random color
            const colors = [
                'rgba(255, 255, 255, 0.3)',
                'rgba(255, 107, 107, 0.3)',
                'rgba(255, 206, 86, 0.3)',
                'rgba(75, 192, 192, 0.3)',
                'rgba(54, 162, 235, 0.3)'
            ];
            element.style.background = colors[Math.floor(Math.random() * colors.length)];

            // Random position
            element.style.left = `${Math.random() * 100}%`;

            // Random animation duration and delay
            const duration = Math.random() * 20 + 10;
            const delay = Math.random() * 5;
            element.style.animationDuration = `${duration}s`;
            element.style.animationDelay = `${delay}s`;

            container.appendChild(element);
        }
    }

    // Create sparkles
    function createSparkles() {
        const container = document.getElementById('floatingElements');
        const sparkleCount = 15;

        for (let i = 0; i < sparkleCount; i++) {
            const sparkle = document.createElement('div');
            sparkle.classList.add('sparkle');

            // Random position
            sparkle.style.left = `${Math.random() * 100}%`;
            sparkle.style.top = `${Math.random() * 100}%`;

            // Random animation delay
            sparkle.style.animationDelay = `${Math.random() * 2}s`;

            container.appendChild(sparkle);
        }
    }

    // Create confetti
    function createConfetti() {
        const container = document.body;
        const confettiCount = 150;

        for (let i = 0; i < confettiCount; i++) {
            const confetti = document.createElement('div');
            confetti.classList.add('confetti');

            // Random color
            const colors = ['#ff6b6b', '#ffd93d', '#6bcf7f', '#4d96ff', '#c780e8'];
            confetti.style.background = colors[Math.floor(Math.random() * colors.length)];

            // Random position
            confetti.style.left = `${Math.random() * 100}%`;

            // Random size
            const size = Math.random() * 10 + 5;
            confetti.style.width = `${size}px`;
            confetti.style.height = `${size}px`;

            // Random animation
            const duration = Math.random() * 3 + 2;
            const delay = Math.random() * 2;
            confetti.style.animation = `confetti-fall ${duration}s linear ${delay}s`;

            container.appendChild(confetti);

            // Remove confetti after animation
            setTimeout(() => {
                confetti.remove();
            }, (duration + delay) * 1000);
        }
    }

    // Password strength indicator
    const passwordInput = document.getElementById('password');
    const strengthMeter = document.getElementById('passwordStrength');

    passwordInput.addEventListener('input', function() {
        const password = this.value;
        let strength = 0;

        if (password.length >= 8) strength++;
        if (password.match(/[a-z]/) && password.match(/[A-Z]/)) strength++;
        if (password.match(/\d/)) strength++;
        if (password.match(/[^a-zA-Z\d]/)) strength++;

        strengthMeter.className = 'strength-meter';
        if (password.length > 0) {
            if (strength <= 2) {
                strengthMeter.classList.add('weak');
            } else if (strength === 3) {
                strengthMeter.classList.add('medium');
            } else {
                strengthMeter.classList.add('strong');
            }
        }
    });

    // Form submission
    document.getElementById('signupForm').addEventListener('submit', function(e) {
        e.preventDefault();
        const signupBtn = this.querySelector('.signup-btn');
        signupBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Creating Magic...';
        signupBtn.disabled = true;

        // Simulate signup process
        setTimeout(() => {
            // Show success message
            document.getElementById('successMessage').classList.add('show');

            // Create confetti
            createConfetti();

            // Redirect to login after 3 seconds
            setTimeout(() => {
                window.location.href = 'login.html';
            }, 3000);
        }, 2000);
    });

    // Initialize effects
    window.onload = function() {
        createFloatingElements();
        createSparkles();
    };
</script>
</body>
</html>
