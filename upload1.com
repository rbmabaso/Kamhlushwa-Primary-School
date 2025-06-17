<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Upload Image - Kamhlushwa Primary School</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: royalblue;
      color: white;
      text-align: center;
    }
    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: royalblue;
      padding: 10px 20px;
    }
    header img {
      height: 60px;
    }
    nav ul {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      list-style: none;
      padding: 0;
    }
    nav ul li {
      margin: 0 10px;
    }
    nav ul li a {
      color: white;
      text-decoration: none;
      font-weight: bold;
    }
    .upload-form {
      background-color: white;
      color: #333;
      margin: 30px auto;
      padding: 30px;
      width: 90%;
      max-width: 500px;
      border-radius: 8px;
    }
    footer {
      background-color: royalblue;
      color: white;
      padding: 15px 0;
      position: fixed;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>

<header>
  <img src="logo.jpg" alt="School Logo">
  <nav>
    <ul>
      <li><a href="index.html">Home</a></li>
      <li><a href="about us.html">About Us</a></li>
      <li><a href="management.html">Management</a></li>
      <li><a href="#">Support</a></li>
      <li><a href="subjects.html">Subjects</a></li>
      <li><a href="contactsdetails.html">Contacts</a></li>
      <li><a href="login.html">Login</a></li>
      <li><a href="apply.html">Apply</a></li>
    </ul>
  </nav>
</header>

<div class="upload-form">
  <h2>Upload Image to Gallery</h2>
  <form action="/upload" method="POST" enctype="multipart/form-data">
    <input type="file" name="image" required>
    <br><br>
    <button type="submit">Upload</button>
  </form>
</div>

<footer>
  &copy; 2025 Kamhlushwa Primary School
</footer>

</body>
</html>
