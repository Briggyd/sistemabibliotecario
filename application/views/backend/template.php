<!DOCTYPE html>
<html lang="ES">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>ingenieria - <?php echo $title; ?></title>
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/log.css">   
	
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bootstrap/css/bootstrap.min.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/datepicker/datepicker3.css">
	
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.min.css">


	
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/datatables/dataTables.bootstrap.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/alertify/themes/alertify.core.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/alertify/themes/alertify.default.css">
	<link rel="stylesheet" href="<?php echo base_url()?>assets/css/dashboard.css">
</head>
<body class="hold-transition skin-blue sidebar-mini-danger">

<!-- color del controno  -->
<div class="wrapper">


	<header class="main-header">
		
		<a href="<?php echo base_url(); ?>backend/dashboard" class="logo">
			
			<span class="logo-mini"><b>Soft</b></span>
			<span class="logo-lg"><b>ingenieria</b></span>
		</a>
		<!--barra de navegacion  -->
		<nav class="navbar navbar-static-top">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
				<span class="sr-only">Toggle navigation</span>
			</a>

			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">

					<li class="info-user-danger">
		              Bienvenido, <?php echo $this->session->userdata("user-danger"); ?>
		            </li>
		            <li>
						<a href="<?php echo base_url(); ?>backend/auth/logout" title="Cerrar Sesion" id="logout">
							<img src="<?php echo base_url(); ?>assets/images/apagados.jpg"alt="Cerrar Session" >
						</a>
					</li>
									

				</ul>
			</div>
		</nav>
	</header>
<!-- barra superirior- tamaño -->
	<aside class="main-sidebar">
		<!-- despliege de reguistros -->
		<section class="sidebar">
			
			<ul class="sidebar">
				
				<li class="<?php echo $this->uri->segment(2) === "dashboard" ? 'active' : '' ?> treeview">
					<a href="<?php echo base_url(); ?>backend/dashboard">
						</i>
						<span>Inicio</span>
					</a>
				</li>
				<li class="<?php echo $this->uri->segment(2) === "facultades" ? 'active' : '' ?> treeview">
					<a href="<?php echo base_url(); ?>backend/facultades">
						</i>
						<span>CATEGORIAS<span>
					</a>

				</li>
				<li class="<?php echo $this->uri->segment(2) === "Estudiantes" ? 'active' : '' ?> treeview">
					<a href="<?php echo base_url(); ?>backend/lectores">
						</i>
						<span>ESTUDIANTES ACTIVO</span>
					</a>

				</li>
				<li class="<?php echo $this->uri->segment(2) === "libros" ? 'active' : '' ?> treeview">
					<a href="<?php echo base_url(); ?>backend/libros">
						</i>
						<span>LIBROS</span>
					</a>
				</li>
				<li class="<?php echo $this->uri->segment(2) === "prestamos" ? 'active' : '' ?> treeview">
		          	<a href="#">
		            	</i>
		            	<span>PRESTAMOS</span>
		            	<span class="pull-right-container">
		              		<i class="fa fa-angle-left pull-right"></i>
		            	</span>
		          	</a>
		          	<ul class="treeview-menu">
		            	<li class="<?php echo $this->uri->segment(3) === "add" ? 'active' : '' ?>"><a href="<?php echo base_url(); ?>backend/prestamos/add"><i class="fa fa-circle-o"></i> Registrar</a></li>
		            	<li class="<?php echo $this->uri->segment(3) === "pending" ? 'active' : '' ?>"><a href="<?php echo base_url(); ?>backend/prestamos/pending"><i class="fa fa-circle-o"></i> Pendientes</a></li>
		            	<li class="<?php echo $this->uri->segment(3) === "all" ? 'active' : '' ?>"><a href="<?php echo base_url(); ?>backend/prestamos/all"><i class="fa fa-circle-o"></i> Todos</a></li>
		          	</ul>
		        </li>
				<li class="<?php echo $this->uri->segment(2) === "usuarios" ? 'active' : '' ?> treeview">
					<a href="<?php echo base_url(); ?>backend/usuarios">
						</i>
						<span>ADMINISTRATIVOS ACTIVOS</span>
					</a>
				</li>


			</ul>
		</section>

		
	</aside>
	
   
	
	<div class="content-wrapper">
	
   

		<!-- PARTE SUPERIROR  -->

			<ol class="breadcrumb">
				<li><a href="<?php echo base_url(); ?>backend/dashboard"></i> Inicio</a></li>
				
				<?php if ($this->uri->segment(2) && $this->uri->segment(3)): ?>
					<li><a href="<?php echo base_url() . 'backend/' . $this->uri->segment(2); ?>"><?php echo ucwords($this->uri->segment(2)); ?></a></li>
					<li class="active">
						<?php echo $this->uri->segment(3) === "add" || $this->uri->segment(3) === "store" ? 'Nuevo' : 'Editar' ?>
					</li>
				<?php else: ?>
					<?php if ($this->uri->segment(2) != "dashboard"): ?>
						<li class="active"><?php echo ucwords($this->uri->segment(2)); ?></li>
					<?php endif?>

				<?php endif;?>
			</ol>
		</section>

	

		<?php echo $contenido; ?>

		
	</div>
	>
	<footer class="main-footer">
		<div class="pull-right hidden-xs">
	
</div>

<script src="<?php echo base_url(); ?>assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script>
	$.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/dist/js/app.min.js"></script
<script src="<?php echo base_url(); ?>assets/dist/js/pages/dashboard.js"></script>
<!-- bootstrap datepicker -->
<script src="<?php echo base_url(); ?>assets/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/datepicker/locales/bootstrap-datepicker.es.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/alertify/lib/alertify.min.js"></script>

<script src="<?php echo base_url();?>assets/dist/js/dashboard.js"></script>
</body >

</html>