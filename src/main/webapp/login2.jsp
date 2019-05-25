<%@page contentType="text/html; utf-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>Sign Up Login</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<body>
<div class="cotn_principal">
  <div class="cont_centrar">
    <div class="cont_login">
      <div class="cont_info_log_sign_up">
        <div class="col_md_login">
          <div class="cont_ba_opcitiy">
            <h2>登录</h2>
            <p>WELCOME TO JOIN US!</p>
            <button class="btn_login" onclick="cambiar_login()">login</button>
          </div>
        </div>
        <div class="col_md_sign_up">
          <div class="cont_ba_opcitiy">
            <h2>SIGN UP</h2>
            <p>Lorem ipsum dolor sit amet, consectetur.</p>
            <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
          </div>
          <span style="flood-color: red">${sessionScope.msg}</span>
        </div>
      </div>
      <div class="cont_back_info">
        <div class="cont_img_back_grey"> <img src="po.jpg" alt="" /> </div>
      </div>
      <div class="cont_forms" >
        <div class="cont_img_back_"> <img src="po.jpg" alt="" /> </div>
        <form action="${pageContext.request.contextPath}/user/login">
          <div class="cont_form_login"> <a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>

            <h2>LOGIN</h2>
            <input type="text" placeholder="Username" name="username"/>
            <input type="password" placeholder="Password" name="password"/>
            <button class="btn_login" type="submit">登 录</button>

          </div>
        </form>
        <form action="${pageContext.request.contextPath}/user/regist" >
        <div class="cont_form_sign_up"> <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
          <h2>注册</h2>
          <input type="text" placeholder="Email" name="email"/>
          <input type="text" placeholder="UserName"  name="username"/>
          <input type="password" placeholder="Password" name="password"/>
          <input type="password" placeholder="Name" name="name"/>
          <input type="password" placeholder="Phone" name="phone"/>
          <button class="btn_sign_up" type="submit" >注 册</button>
        </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script src="js/index2.js"></script>
</body>

</body>
</html>
