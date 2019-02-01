<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
	$(document).ready(
		function() {
			var trigger = $('.hamburger'), overlay = $('.overlay'), isClosed = false;

			trigger.click(function() {
				hamburger_cross();
			});

			function hamburger_cross() {

				if (isClosed == true) {
					overlay.hide();
					trigger.removeClass('is-open');
					trigger.addClass('is-closed');
					isClosed = false;

				} else {
					overlay.show();
					trigger.removeClass('is-closed');
					trigger.addClass('is-open');
					isClosed = true;
				}
			}
			$('[data-toggle="offcanvas"]').click(function() {
				$('#wrapper').toggleClass('toggled');
			});
	});
</script>
</head>
<body>

	<div id="wrapper">
		<button type="button" class="hamburger is-closed"
			data-toggle="offcanvas">
			<span class="hamb-top"></span> <span class="hamb-middle"></span> <span
				class="hamb-bottom"></span>
		</button>
		<!-- Sidebar -->
		<nav class="navbar navbar-inverse navbar-fixed-top"
			id="sidebar-wrapper" role="navigation">
			<!-- side-menu -->
			<button class="action action--open" aria-label="Open Menu">
				<span class="icon icon--menu"></span>
			</button>
			<nav id="ml-menu" class="menu">
				<button class="action action--close" aria-label="Close Menu">
					<span class="icon icon--cross"></span>
				</button>
				<div class="menu__wrap">
					<ul data-menu="main" class="menu__level">
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-0" href="mypage">마이페이지</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-1" href="#">금융상품</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-2" href="#">자산관리</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-3" href="#">안내</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-4" href="#">상담</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-5" href="#">이벤트</a></li>
					</ul>
					<!-- Submenu 0 마이페이지 -->
					<ul data-menu="submenu-0" class="menu__level">
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-0-1" href="#">조회</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-0-2" href="#">이체</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-0-3" href="#">설정</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-0-4" href="#">내서류</a></li>
						<li class="menu__item"><a class="menu__link" href="#">탈퇴</a></li>
					</ul>
					<!-- Submenu 0-1 조회 -->
					<ul data-menu="submenu-0-1" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="mypage">계좌관리</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-0-1-2" href="#">대출관리</a></li>
					</ul>
					<!-- Submenu 0-1-1 계좌조회 -->
					<ul data-menu="submenu-0-2" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">조회</a></li>
						<li class="menu__item"><a class="menu__link" href="#">삭제</a></li>
					</ul>
					<!-- submenu-0-1-2 대출관리 -->
					<ul data-menu="submenu-0-1-2" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">조회(진행현황)</a></li>
						<li class="menu__item"><a class="menu__link" href="#">상환</a></li>
					</ul>
					<!-- Submenu 0-2 이체 -->
					<ul data-menu="submenu-0-2" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">계좌이체</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-0-2-1" href="#">자동이체</a></li>
					</ul>
					<!-- Submenu 0-2-1 자동이체 -->
					<ul data-menu="submenu-0-2-1" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">자동이체
								조회</a></li>
					</ul>
					<!-- Submenu 0-3 설정 -->
					<ul data-menu="submenu-0-3" class="menu__level">
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-0-3-1" href="#">이체한도</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-0-3-2" href="#">자동이체</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-0-3-3" href="#">알림</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-0-3-4" href="#">카드신청</a></li>
					</ul>
					<!-- Submenu 0-3-1 설정-> 이체한도 -->
					<ul data-menu="submenu-0-3-1" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">이체한도조회</a></li>
						<li class="menu__item"><a class="menu__link" href="#">이체한도감액</a></li>
					</ul>
					<!-- Submenu 0-3-2 설정-> 자동이체 -->
					<ul data-menu="submenu-0-3-2" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">자동이체조회</a></li>
						<li class="menu__item"><a class="menu__link" href="#">자동이체등록</a></li>
						<li class="menu__item"><a class="menu__link" href="#">자동이체삭제</a></li>
					</ul>
					<!-- Submenu 0-3-3 설정-> 알림 -->
					<ul data-menu="submenu-0-3-3" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">sms알림</a></li>
						<li class="menu__item"><a class="menu__link" href="#">핸드폰알림</a></li>
						<li class="menu__item"><a class="menu__link" href="#">이메일알림</a></li>
					</ul>
					<!-- Submenu 0-3-4 설정-> 카드신청 -->
					<ul data-menu="submenu-0-3-4" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">qr코드
								카드신청</a></li>
						<li class="menu__item"><a class="menu__link" href="#">신청조회</a></li>
					</ul>

					<!-- Submenu 0-4 내서류 -->
					<ul data-menu="submenu-0-4" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">서류등록</a></li>
						<li class="menu__item"><a class="menu__link" href="#">서류삭제</a></li>
					</ul>
					<!-- Submenu 1 금융상품 -->
					<ul data-menu="submenu-1" class="menu__level">
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-1-1" href="#">예금</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-1-2" href="#">대출</a></li>
					</ul>
					<!-- Submenu 1-1 예금-->
					<ul data-menu="submenu-1-1" class="menu__level">
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-1-1-1" href="#">예금 상품</a></li>
						<li class="menu__item"><a class="menu__link" href="#">예금
								상품 가입</a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-1-1-2" href="#">예금 가이드 </a></li>
					</ul>
					<!-- Submenu 1-1-1 예금 상품-->
					<ul data-menu="submenu-1-1-1" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">개인</a></li>
						<li class="menu__item"><a class="menu__link" href="#">기업</a></li>
					</ul>
					<!-- Submenu 1-1-2 가이드-->
					<ul data-menu="submenu-1-1-2" class="menu__level">
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-1-1-2-1" href="#">개인</a></li>
					</ul>
					<!-- submenu-1-1-2-1 가이드-> 개인 -->
					<ul data-menu="submenu-1-1-2-1" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">예금금리안내</a></li>
						<li class="menu__item"><a class="menu__link" href="#">예금관련수수료</a></li>
					</ul>
					<!-- Submenu 1-2 대출-->
					<ul data-menu="submenu-1-2" class="menu__level">
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-1-2-1" href="#">대출상품</a></li>
						<li class="menu__item"><a class="menu__link" href="#">
								대출신청 </a></li>
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-1-2-2" href="#">대출가이드</a></li>
					</ul>
					<!-- Submenu 1-2 대출상품 -->
					<ul data-menu="submenu-1-2-1" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">개인</a></li>
					</ul>
					<!-- submenu-1-2-2대출가이드-->
					<ul data-menu="submenu-1-2-2" class="menu__level">
						<li class="menu__item"><a class="menu__link"
							data-submenu="submenu-1-2-2-1" href="#">개인</a></li>
					</ul>
					<!-- submenu-1-2-2-1 대출가이드-> 개인 -->
					<ul data-menu="submenu-1-2-2-1" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">대출관련수수료</a></li>
						<li class="menu__item"><a class="menu__link" href="#">부가서비스</a></li>
						<li class="menu__item"><a class="menu__link" href="#">제출자료안내</a></li>
					</ul>
					<!-- Submenu 2 -->
					<ul data-menu="submenu-2" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">자산관리
								안내</a></li>
						<li class="menu__item"><a class="menu__link" href="#">자산관리요약</a></li>
					</ul>
					<!-- Submenu 3  안내 -->
					<ul data-menu="submenu-3" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">첫방문
								고객 안내</a></li>
						<li class="menu__item"><a class="menu__link" href="#">FAQ</a></li>
						<li class="menu__item"><a class="menu__link" href="#">이용시간
								안내</a></li>
						<li class="menu__item"><a class="menu__link" href="#">이용
								수수료 안내</a></li>
						<li class="menu__item"><a class="menu__link" href="#">이용혜택
								안내</a></li>
						<li class="menu__item"><a class="menu__link" href="#">이용
								약관 안내</a></li>
					</ul>
					<!-- Submenu 4 -->
					<ul data-menu="submenu-4" class="menu__level">
						<li class="menu__item"><a class="menu__link" href="#">예금상담</a></li>
						<li class="menu__item"><a class="menu__link" href="#">대출상담</a></li>
						<li class="menu__item"><a class="menu__link" href="#">이용안내</a></li>
						<li class="menu__item"><a class="menu__link" href="#">제출서류안내</a></li>
					</ul>
				</div>
			</nav>
		</nav>
		<!--top-menu -->
		<div id="page-content-wrapper">
			<div class="container">
				<!-- top-menu -->
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<header id="header">
							<div class="container">
								<div id="logo" class="pull-left">
									<h1>
										<a href="index" class="scrollto"><img src="/benkfit/resources/img/logo.jpeg"></a>
									</h1>
								</div>
								<nav id="nav-menu-container">
									<ul class="nav-menu">
										<li class="menu-has-children"><a href="check">금융상품</a>
											<ul>
												<li><a href="check">예금</a></li>
												<li><a href="loan">적금</a></li>
											</ul></li>
										<li class="menu-has-children"><a href="">자산관리</a>
											<ul>
												<li><a href="#">자산관리 1</a></li>
												<li><a href="#">자산관리 2</a></li>
												<li><a href="#">자산관리 3</a></li>
											</ul></li>
										<li><a href="chat">상담</a></li>
										<li><a href="info">안내</a></li>
										<li><a href="event">이벤트</a></li>
										<li><a href="login">로그인</a><br></li>
										<li><a href="signIn">회원가입</a><br></li>
										<li>
											<div id="myOver" class="over" style="display: none;">
												<span class="closebtn" onclick="closeSearch()"
													title="Close over">×</span>
												<div class="over-content">
													<form action="/action_page.php">
														<input type="text" placeholder="Search.." name="search"
															id="searchinput">
														<button type="submit">
															<i class="fa fa-search"></i>
														</button>
													</form>
												</div>
											</div>
											<button class="openBtn" onclick="openSearch()">
												<p>
													<span class="glyphicon glyphicon-search"></span>
												</p>
											</button>
										</li>
									</ul>
								</nav>
							</div>
						</header>
						<!-- #header -->
					</div>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->
	</div>
	<!-- /#wrapper -->

	<!-- /view -->
	<script>
		(function() {
			
			$('a').click(function(){
				var location = $(this).prop("href");
				if(location != "#"){
					window.location.href = location;
				}
			})
			
			var menuEl = document.getElementById('ml-menu'), mlmenu = new MLMenu(
					menuEl, {
						backCtrl : false, // show back button
						onItemClick : loadDummyData
					});

			// mobile menu toggle
			var openMenuCtrl = document.querySelector('.action--open'), 
				closeMenuCtrl = document.querySelector('.action--close');

			openMenuCtrl.addEventListener('click', openMenu);
			closeMenuCtrl.addEventListener('click', closeMenu);

			function openMenu() {
				classie.add(menuEl, 'menu--open');
			}

			function closeMenu() {
				classie.remove(menuEl, 'menu--open');
			}
			// simulate grid content loading
			var gridWrapper = document.querySelector('.content');

			function loadDummyData(ev, itemName) {
				
				
				ev.preventDefault();

				closeMenu();
				
				if(gridWrapper != null){
					gridWrapper.innerHTML = '';
					classie.add(gridWrapper, 'content--loading');
					setTimeout(function() {
						classie.remove(gridWrapper, 'content--loading');
						gridWrapper.innerHTML = '<ul class="products">'
								+ dummyData[itemName] + '<ul>';
					}, 700);
				}else{
					if(location != "#")	{
						window.location = location;
						return false;
					}	
				}
			}
		})();
	</script>
	
	<script>
		function openSearch() {
			document.getElementById("myOver").style.display="block";
		}

		function closeSearch() {
			document.getElementById("myOver").style.display = "none";
		}
	</script>
</body>
</html>