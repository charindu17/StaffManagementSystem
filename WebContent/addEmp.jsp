
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Employee</title>

  <!-- style -->
  <style>
      /*css styles for login */
      body {
        font-family: Product Sans, bold;
        background-color: PALEGOLDENROD;
      }
      .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 30px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }
      h1 {
        text-align: center;
      }
      label {
        display: block;
        margin-bottom: 10px;
      }
      input[type="text"],
      input[type="password"] ,input[type="email"],input[type="date"]{
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
      }
      input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        background-color: DARKKHAKI;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }
      input[type="submit"]:hover {
        background-color: DARKOLIVEGREEN;
      }
    </style>
</head>
<body>
     <div class="container">
      <h1>Add Employee</h1>
      <form action="add" method="post">

        <label for="username">Username </label>
        <input type="text"  name="uid" required />

        <label for="password">Password</label>
        <input type="password"  name="pass" required />

        <label for="name">Name </label>
        <input type="text"  name="nuid" required />

        <label for="dateofbirth">Date of Birth </label>
        <input type="date"  name="dob" required />
        
        <label for="email">Email </label>
        <input type="email"  name="euid" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" placeholder="email@gmail.com"/>

        <label for="username">Job Title </label>
        <input type="text"  name="juid" required />

        <label for="department">Department </label>
        <input type="text"  name="duid" required />


        <input type="submit" value="Add Employee"  name = "submit"/>

        
      </form>
    </div>

    
    


</body>
</html>