<header>
  <!-- Fixed navbar -->
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <div class="dropdown">
          <a class="btn btn-dark dropdown
            dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Cadastros</a>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            <a class="dropdown-item" data-toggle="modal" data-target="#CadUsuario">Usuário</a>
            <a class="dropdown-item" data-toggle="modal" data-target="#CadVolume">Volume</a>
          </div>
        </div>
        <li class="nav-item">
          <a class="nav-link" href="#">Retiradas <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Usuário <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
					<a class="nav-link" href="Views/sair.php">Sair</a>
				</li>        
      </ul>
      <form class="form-inline mt-2 mt-md-0">
        <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
        <div class="dropdown">
          <a class="btn btn-dark dropdown
            dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Tipo de Usuário </a>

          <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            <a class="dropdown-item" href="#">Professor</a>
            <a class="dropdown-item" href="#">Aluno</a>
            <a class="dropdown-item" href="#">Comunidade</a>
          </div>
        </div>
        <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Pocurar</button>
      </form>
    </div>
  </nav>
</header>