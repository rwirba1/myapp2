<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Unleash Efficiency, Collaboration, and High-Quality Delivery</title>
    <style>
        body {
            background-image: url("bk_ground.png");
            background-repeat: repeat;
            background-size: auto;
            position: relative;
            min-height: 100vh;
        }

        .logo {
            text-align: center;
            margin-top: 20px;
        }

        .contact-form {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 5px;
        }
    </style>
    <script>
        function displayToolInfo() {
            var courseSelect = document.getElementById("course");
            var selectedCourse = courseSelect.value;
            var toolInfo = document.getElementById("tool-info");

            // Clear existing tool info
            toolInfo.innerHTML = "";

            // Define tool information based on the selected course
            if (selectedCourse === "jenkins") {
                toolInfo.innerHTML = "<h3>Jenkins</h3><p>Jenkins is an open-source automation server that facilitates the continuous integration and delivery of software projects.</p><p>To install Jenkins, follow these steps:</p><ol><li>Visit the Jenkins website</li><li>Download the latest Jenkins package</li><li>Install Jenkins according to the documentation</li><li>Access Jenkins on your browser to complete the setup</li></ol>";
            } else if (selectedCourse === "ansible") {
                toolInfo.innerHTML = "<h3>Ansible</h3><p>Ansible is an open-source automation tool that simplifies configuration management, application deployment, and task automation.</p><p>To install Ansible, follow these steps:</p><ol><li>Install Ansible using your system's package manager</li><li>Set up an inventory file to define your hosts</li><li>Create a playbook with your desired automation tasks</li><li>Run the playbook using the 'ansible-playbook' command</li></ol>";
            } else if (selectedCourse === "docker") {
                toolInfo.innerHTML = "<h3>Docker</h3><p>Docker is a platform that allows you to automate the deployment of applications within lightweight, portable, and self-sufficient containers.</p><p>To install Docker, follow these steps:</p><ol><li>Visit the Docker website</li><li>Download the appropriate Docker package for your system</li><li>Install Docker according to the documentation</li><li>Start the Docker service</li><li>Verify the installation by running a Docker command</li></ol>";
            } else if (selectedCourse === "terraform") {
                toolInfo.innerHTML = "<h3>Terraform</h3><p>Terraform is an infrastructure provisioning and management tool that enables you to define and automate your infrastructure as code.</p><p>To install Terraform, follow these steps:</p><ol><li>Visit the Terraform website</li><li>Download the appropriate Terraform package for your system</li><li>Install Terraform according to the documentation</li><li>Verify the installation by running the 'terraform version' command</li></ol>";
            } else if (selectedCourse === "kubernetes") {
                toolInfo.innerHTML = "<h3>Kubernetes</h3><p>Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications.</p><p>To install Kubernetes, follow these steps:</p><ol><li>Choose a Kubernetes distribution, such as Minikube or Kubernetes-in-Docker</li><li>Follow the installation instructions specific to your chosen distribution</li><li>Set up a Kubernetes cluster using the provided tools</li><li>Interact with the cluster using kubectl, the Kubernetes command-line tool</li></ol>";
            }
        }
    </script>
</head>
<body>
    <div class="logo">
        <img src="logo.png" width="200" height="100"> <!-- Replace "logo.png" with the path to your logo file -->
    </div>

    <h1>Unleash Efficiency, Collaboration, and High-Quality Delivery</h1>
    <p>We bridge the gap between development and operations with meticulously curated content that includes step-by-step tutorials, real-world case studies, interactive quizzes, and hands-on projects. Our lessons are updated regularly to ensure you stay on top of the latest trends and best practices in the ever-evolving field of DevOps.</p>

    <img src="https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fs41598-019-55241-4/MediaObjects/41598_2019_55241_Fig1_HTML.png" alt="M I TECH Image" width="300" height="200">

    <form>
        <label for="course">Select a Course:</label>
        <select id="course" name="course" onchange="displayToolInfo()">
            <option value="jenkins">Jenkins</option>
            <option value="ansible">Ansible</option>
            <option value="docker">Docker</option>
            <option value="terraform">Terraform</option>
            <option value="kubernetes">Kubernetes</option>
        </select>
    </form>

    <div class="contact-form">
        <form>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            <br><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <br><br>
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="4" cols="50" required></textarea>
            <br><br>
            <input type="submit" value="Send">
        </form>
    </div>

    <div id="tool-info"></div>
</body>
</html>