<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>{{$title}}</title>
	<link href="assets/img/logo.png" rel="icon">
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />

	<!-- Fonts and icons -->
	<script src="/assets/js/plugin/webfont/webfont.min.js"></script>
	<script>
		WebFont.load({
			google: {
				"families": ["Open+Sans:300,400,600,700"]
			},
			custom: {
				"families": ["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands"],
				urls: ['../../assets/css/fonts.css']
			},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script>

	<!-- CSS Files -->
	<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/assets/css/azzara.min.css">
	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link rel="stylesheet" href="/assets/css/demo.css">
</head>

<body>
	<div class="wrapper">
		<div class="main-header" data-background-color="green">
			<!-- Logo Header -->
			<div class="logo-header">

				<a href="\public\assets\img\logo.png" class="logo">
					<font color="white" alt="navbar brand" class="navbar-brand">JRS</font>
				</a>
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">
						<i class="fa fa-bars"></i>
					</span>
				</button>
				<button class="topbar-toggler more"><i class="fa fa-ellipsis-v"></i></button>
				<div class="navbar-minimize">
					<button class="btn btn-minimize btn-rounded">
						<i class="fa fa-bars"></i>
					</button>
				</div>
			</div>
			<!-- End Logo Header -->
		</div>

		<!-- Sidebar -->
		<div class="sidebar">
			<div class="sidebar-wrapper scrollbar-inner">
				<div class="sidebar-content">
					<div class="user">
						<div class="avatar-sm float-left mr-2">
							<img src="/assets/img/profile.jpg" alt="" class="avatar-img rounded-circle">
						</div>
						<div class="info">
							<a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									{{ Auth::user()->nama }}
									<span class="user-level">Administrator Sistem</span>
								</span>
							</a>
							<div class="clearfix"></div>
						</div>
					</div>
					<ul class="nav">
						<li class="nav-item">
							<a href="{{ url('admin') }}">
								<i class="fas fa-home"></i>
								<p>Dashboard</p>
							</a>
						</li>
						<li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">Menu</h4>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#user">
								<i class="fa fa-user"></i>
								<p>User</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="user">
								<ul class="nav nav-collapse">
									<li>
										<a href="{{ url('admin/admins') }}">
											<span class="sub-item">Administrator</span>
										</a>
									</li>
									<li>
										<a href="{{ url('admin/admin_opds') }}">
											<span class="sub-item">Administrator OPD</span>
										</a>
									</li>
									<li>
										<a href="{{ url('admin/wajib_retribusis') }}">
											<span class="sub-item">Wajib Retribusi</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#retribusi">
								<i class="fa fa-briefcase"></i>
								<p>Retribusi</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="retribusi">
								<ul class="nav nav-collapse">
									<li>
										<a href="{{ url('admin/retribusis') }}">
											<span class="sub-item">Jenis</span>
										</a>
									</li>
									<li>
										<a href="{{ url('admin/kategoris') }}">
											<span class="sub-item">Kategori</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a href="{{ url('admin/transaksis') }}">
								<i class="fas fa-chart-bar"></i>
								<p>Data Transaksi</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="{{ url('auth/logout') }}">
								<i class="fas fa-sign-out-alt"></i>
								<p>Logout</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		@yield('content')

	</div>
	<!--   Core JS Files   -->
	<script src="../../assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="../../assets/js/core/popper.min.js"></script>
	<script src="../../assets/js/core/bootstrap.min.js"></script>
	<!-- jQuery UI -->
	<script src="../../assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="../../assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	<!-- Bootstrap Toggle -->
	<script src="../../assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
	<!-- jQuery Scrollbar -->
	<script src="../../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
	<!-- Datatables -->
	<script src="../../assets/js/plugin/datatables/datatables.min.js"></script>
	<!-- Azzara JS -->
	<script src="../../assets/js/ready.min.js"></script>
	<!-- Azzara DEMO methods, don't include it in your project! -->
	<script src="../../assets/js/setting-demo.js"></script>
	<!-- Sweet Alert -->
	<script src="../../assets/js/plugin/sweetalert/sweetalert.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#add-row').DataTable({});
		});
	</script>
	<script>
		//== Class definition
		var SweetAlert2Demo = function() {

			//== Demos
			var initDemos = function() {

				//== Sweetalert Demo 4
				$('#alert_demo_4').click(function(e) {
					swal({
						title: "Good job!",
						text: "You clicked the button!",
						icon: "success",
						buttons: {
							confirm: {
								text: "Confirm Me",
								value: true,
								visible: true,
								className: "btn btn-success",
								closeModal: true
							}
						}
					});
				});

				$('#alert_demo_7').click(function(e) {
					swal({
						title: 'Are you sure?',
						text: "You won't be able to revert this!",
						type: 'warning',
						buttons: {
							confirm: {
								text: 'Yes, delete it!',
								className: 'btn btn-success'
							},
							cancel: {
								visible: true,
								className: 'btn btn-danger'
							}
						}
					}).then((Delete) => {
						if (Delete) {
							swal({
								title: 'Deleted!',
								text: 'Your file has been deleted.',
								type: 'success',
								buttons: {
									confirm: {
										className: 'btn btn-success'
									}
								}
							});
						} else {
							swal.close();
						}
					});
				});

				$('#alert_demo_8').click(function(e) {
					swal({
						title: 'Are you sure?',
						text: "You won't be able to revert this!",
						type: 'warning',
						buttons: {
							cancel: {
								visible: true,
								text: 'No, cancel!',
								className: 'btn btn-danger'
							},
							confirm: {
								text: 'Yes, delete it!',
								className: 'btn btn-success'
							}
						}
					}).then((willDelete) => {
						if (willDelete) {
							swal("Poof! Your imaginary file has been deleted!", {
								icon: "success",
								buttons: {
									confirm: {
										className: 'btn btn-success'
									}
								}
							});
						} else {
							swal("Your imaginary file is safe!", {
								buttons: {
									confirm: {
										className: 'btn btn-success'
									}
								}
							});
						}
					});
				})

			};

			return {
				//== Init
				init: function() {
					initDemos();
				},
			};
		}();

		//== Class Initialization
		jQuery(document).ready(function() {
			SweetAlert2Demo.init();
		});
	</script>
</body>

</html>