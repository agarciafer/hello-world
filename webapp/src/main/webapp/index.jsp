<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String version = "V3.0";
    String fecha = new java.text.SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(new java.util.Date());
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Learning Platform</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(135deg,#0f172a,#1e293b,#2563eb);
    color:white;
    min-height:100vh;
}

/* HEADER */

.header{
    text-align:center;
    padding:40px;
}

.header h1{
    font-size:55px;
    text-transform:uppercase;
    letter-spacing:3px;
    margin-bottom:10px;
}

.header h2{
    color:#93c5fd;
    font-size:28px;
}

.version{
    margin-top:20px;
    display:inline-block;
    padding:15px 35px;
    background:#22c55e;
    color:#052e16;
    border-radius:50px;
    font-size:28px;
    font-weight:bold;
    box-shadow:0 0 25px rgba(34,197,94,0.8);
}

/* MAIN CONTAINER */

.main{
    width:90%;
    max-width:1200px;
    margin:auto;
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:40px;
    padding-bottom:50px;
}

/* FORM */

.form-container{
    background:rgba(255,255,255,0.08);
    padding:40px;
    border-radius:25px;
    backdrop-filter: blur(10px);
    box-shadow:0 0 25px rgba(0,0,0,0.4);
}

.form-container h3{
    font-size:32px;
    margin-bottom:20px;
    color:#facc15;
}

.form-container p{
    margin-bottom:30px;
    color:#e2e8f0;
}

label{
    display:block;
    margin-top:15px;
    margin-bottom:8px;
    font-weight:bold;
}

input{
    width:100%;
    padding:15px;
    border:none;
    border-radius:10px;
    font-size:16px;
    background:#f1f5f9;
}

input:focus{
    outline:none;
    box-shadow:0 0 10px #60a5fa;
}

.registerbtn{
    width:100%;
    margin-top:30px;
    padding:18px;
    border:none;
    border-radius:12px;
    background:#2563eb;
    color:white;
    font-size:20px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

.registerbtn:hover{
    background:#1d4ed8;
    transform:scale(1.03);
}

/* RIGHT PANEL */

.info-panel{
    display:flex;
    flex-direction:column;
    gap:25px;
}

.card{
    background:rgba(255,255,255,0.08);
    padding:30px;
    border-radius:25px;
    box-shadow:0 0 20px rgba(0,0,0,0.3);
    transition:0.3s;
}

.card:hover{
    transform:translateY(-5px);
}

.card h3{
    color:#facc15;
    margin-bottom:15px;
    font-size:28px;
}

.card p{
    line-height:1.7;
    color:#e2e8f0;
}

/* PIPELINE */

.pipeline{
    display:flex;
    justify-content:space-between;
    margin-top:25px;
    flex-wrap:wrap;
    gap:15px;
}

.step{
    flex:1;
    min-width:120px;
    background:#0f172a;
    padding:20px;
    border-radius:15px;
    text-align:center;
    border:1px solid rgba(255,255,255,0.1);
}

.step h4{
    color:#22c55e;
    margin-bottom:10px;
}

/* FOOTER */

.footer{
    text-align:center;
    padding:30px;
    color:#cbd5e1;
    font-size:18px;
}

.footer span{
    color:#22c55e;
    font-weight:bold;
}

/* RESPONSIVE */

@media(max-width:900px){

    .main{
        grid-template-columns:1fr;
    }

    .header h1{
        font-size:38px;
    }

}

</style>

</head>

<body>

<div class="header">

    <h1>DevOps Learning Platform</h1>

    <h2>Continuous Integration & Continuous Deployment</h2>

    <div class="version">
        Deployment Successful - <%= version %>
    </div>

</div>

<div class="main">

    <!-- LEFT SIDE -->

    <div class="form-container">

        <h3>Create Your DevOps Account</h3>

        <p>
            Register now and start your DevOps journey with Docker,
            Kubernetes, Jenkins, GitHub Actions and CI/CD Pipelines.
        </p>

        <form action="action_page.php">

            <label for="Name">Enter Name</label>
            <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>

            <label for="mobile">Enter Mobile</label>
            <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" required>

            <label for="email">Enter Email</label>
            <input type="email" placeholder="Enter Email" name="email" id="email" required>

            <label for="psw">Password</label>
            <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

            <label for="psw-repeat">Repeat Password</label>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

            <button type="submit" class="registerbtn">
                Register Now
            </button>

        </form>

    </div>

    <!-- RIGHT SIDE -->

    <div class="info-panel">

        <div class="card">

            <h3>New Application Version</h3>

            <p>
                The platform has been automatically updated using a DevOps CI/CD pipeline.
                Students can now verify the deployment process and identify application version changes.
            </p>

            <br>

            <p>
                Current Version:
                <strong style="color:#22c55e;"><%= version %></strong>
            </p>

            <p>
                Deployment Date:
                <strong style="color:#facc15;"><%= fecha %></strong>
            </p>

        </div>

        <div class="card">

            <h3>CI/CD Pipeline</h3>

            <div class="pipeline">

                <div class="step">
                    <h4>Git</h4>
                    <p>Code Push</p>
                </div>

                <div class="step">
                    <h4>Jenkins</h4>
                    <p>Build</p>
                </div>

                <div class="step">
                    <h4>Docker</h4>
                    <p>Image</p>
                </div>

                <div class="step">
                    <h4>K8s</h4>
                    <p>Deploy</p>
                </div>

            </div>

        </div>

        <div class="card">

            <h3>Technologies Included</h3>

            <p>
                Kubernetes • Docker • Jenkins • GitHub • Linux • Helm • Argo CD • AWS
            </p>

            <br>

            <p>
                "Deploy like a K-Pop comeback: fast, synchronized and spectacular."
            </p>

        </div>

    </div>

</div>

<div class="footer">

    © 2026 DevOps Learning Center | Application Version:
    <span><%= version %></span>

</div>

</body>
</html>
```

    
          
