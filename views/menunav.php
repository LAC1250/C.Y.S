  <style media="screen">
  body{
      background-color: #5ce1e6 !important;
  }
  #menu{
      width: 35px;
      height: 30px;
      margin: 30px 0 20px 20px;
      cursor: pointer;
     }
     .bar{
      height: 5px;
      width: 100%;
      background-color: white;
      display: block;
      border-radius: 5px;
      transition: 0.3s ease;
     }
     #bar1{
      transform: translateY(-4px);
     }
     #bar3{
      transform: translateY(4px);
     }
     .nav li a {
      color: black;
      text-decoration: none;
     }
     .nav li a:hover{
      font-weight: bold;
     }
     .nav li{
      list-style: none;
      padding: 16px 0;
     }
     .nav{
      padding: 0;
      margin: 0 20px;
      transition: 0.3s ease;
      display: none;
     }
     .menu-bg, #menu-bar{
      top: 0;
      left: 0;
      position: absolute;
     }
     .menu-bg{
      z-index: 1;
      width: 0;
      height: 0;
      margin: 30px 0 20px 20px;
      border-radius: 50%;
      background: radial-gradient(circle, #9400d3,#8a2be2);
      transition: 0.3s ease;
     }
     #menu-bar{
      z-index: 2;
     }
     .change-bg{
      width: 550px;
      height: 540px;
      transform: translate(-60%, -30px);
     }
     .change .bar{
      background-color: #fff;
     }
     .change #bar1{
      transform: translateY(4px) rotateZ(-45deg);
     }
     .change #bar3{
      transform: translateY(-6px) rotateZ(45deg);
     }
     .change #bar2{
      opacity: 0;
     }
     .change{
      display: block;
     }
     nav{
         opacity: .7;
     }
     nav h2{
         color: black;
         float:right;
         padding: 15px;
         margin-left: 150px;
         margin-right: 10px;
     }
     nav:after{
         content: '';
         display: block;
         clear: both;
     }
    .home li{
        display: inline-block;
        list-style: none;
        margin-top: auto;
    }
    .home li a{
        display: inline-block;
        color: black;
        padding: 20px;
        text-decoration: none;
    }
    #tempo_verbal{
      position: fixed;
      left: 80%;
      bottom: 90%;
      font-size: 25px;
    }
    .conteudo{
      position: fixed;
      font-size: 15px;
      text-align: center;
      left: 40%;
      top: 250px;
    }
    .link{
      color: black;
      text-decoration: none;
    }
  </style>
    <h1>
      <?php
        echo "<p class='d-flex justify-content-end' id='tempo_verbal'>{$tempo['descricao']}</p>";
       ?>
    </h1>
    <h1 class="conteudo">
      <?php
        foreach ($musicas as $musica) {
          echo "
          <p class = 'title_music'>{$musica['titulo']}</p>
          <p><a class = 'link' href='$caminho/CYS/questionario/{$musica['id']}'>Escutar Música</a></p>
          ";
        }
       ?>
    </h1>
