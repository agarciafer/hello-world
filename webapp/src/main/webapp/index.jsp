<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.InetAddress" %>
<%
    // ========================================================================
    // VARIABLES DE DESPLIEGUE (¡Cambiad esto en vuestras pipelines!)
    // ========================================================================
    String appVersion = "1.0.0"; 
    String releaseName = "Apollo";
    String customMessage = "¡Bienvenidos al Bootcamp de DevOps! Despliegue completado con éxito.";
    String environment = "Desarrollo"; // Puede ser DEV, QA, PROD

    // Captura de datos del servidor para prácticas de Balanceo de Carga / Docker
    String hostName = "Desconocido";
    String hostIp = "Desconocido";
    try {
        InetAddress inetAddress = InetAddress.getLocalHost();
        hostName = inetAddress.getHostName();
        hostIp = inetAddress.getHostAddress();
    } catch (Exception e) {
        hostName = "Error resolviendo Host";
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps App | V <%= appVersion %></title>
    <style>
        :root {
            --primary: #00ffcc;
            --bg-color: #0d1117;
            --card-bg: #161b22;
            --text-main: #c9d1d9;
            --text-muted: #8b949e;
        }
        body {
            background-color: var(--bg-color);
            color: var(--text-main);
            font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, monospace;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: radial-gradient(circle at center, #1a202c 0%, #0d1117 100%);
        }
        .container {
            background-color: var(--card-bg);
            border-radius: 12px;
            padding: 40px;
            box-shadow: 0 8px 32px rgba(0, 255, 204, 0.1);
            border: 1px solid rgba(0, 255, 204, 0.2);
            max-width: 600px;
            width: 90%;
            text-align: center;
        }
        .version-badge {
            display: inline-block;
            background-color: rgba(0, 255, 204, 0.1);
            color: var(--primary);
            border: 1px solid var(--primary);
            padding: 8px 16px;
            border-radius: 50px;
            font-size: 1.2rem;
            font-weight: bold;
            margin-bottom: 20px;
            box-shadow: 0 0 10px rgba(0, 255, 204, 0.2);
        }
        h1 {
            font-size: 2rem;
            margin: 10px 0;
            color: #ffffff;
        }
        p.message {
            font-size: 1.2rem;
            color: var(--text-muted);
            margin-bottom: 30px;
            line-height: 1.5;
        }
        .server-info {
            background-color: #010409;
            border-radius: 8px;
            padding: 15px;
            text-align: left;
            font-family: 'Courier New', Courier, monospace;
            font-size: 0.9rem;
            border-left: 4px solid var(--primary);
        }
        .server-info p {
            margin: 8px 0;
        }
        .highlight {
            color: var(--primary);
            font-weight: bold;
        }
        .env-badge {
            display: inline-block;
            background: #ff7b72;
            color: #000;
            padding: 3px 8px;
            border-radius: 4px;
            font-size: 0.8rem;
            font-weight: bold;
            vertical-align: middle;
            margin-left: 10px;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="version-badge">
            Versión <%= appVersion %> - <%= releaseName %>
        </div>
        
        <h1>Despliegue Tomcat <span class="env-badge"><%= environment %></span></h1>
        <p class="message">"<%= customMessage %>"</p>
        
        <div class="server-info">
            <p>Estado del Servidor:</p>
            <p>▸ Hostname: <span class="highlight"><%= hostName %></span></p>
            <p>▸ Dirección IP: <span class="highlight"><%= hostIp %></span></p>
            <p>▸ ID de Sesión: <span class="highlight"><%= session.getId() %></span></p>
            <p>▸ Tiempo Servidor: <span class="highlight"><%= new java.util.Date() %></span></p>
        </div>
    </div>

</body>
</html>
