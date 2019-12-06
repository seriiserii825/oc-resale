<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
    <base href="<?php echo $base; ?>"/>
	<?php if ($description) { ?>
        <meta name="description" content="<?php echo $description;
		if (isset($_GET['page'])) {
			echo " - " . ((int)$_GET['page']) . " " . $text_page;
		} ?>"/>
	<?php } ?>
	<?php if ($keywords): ?>
        <meta name="keywords" content="<?= $keywords; ?>"/>
	<?php endif; ?>
	<?php if ($description): ?>
        <meta name="keywords" content="<?= $description; ?>"/>
	<?php endif; ?>
	<?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
              media="<?php echo $style['media']; ?>"/>
	<?php } ?>
	<?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
	<?php } ?>

    <link rel="stylesheet" href="catalog/view/theme/resale/css/bootstrap.min.css">
    <link rel="stylesheet" href="catalog/view/theme/resale/css/bootstrap-select.css">
    <link rel="stylesheet" href="catalog/view/theme/resale/css/flexslider.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="catalog/view/theme/resale/css/font-awesome.min.css"/>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title><?php echo $title;
		if (isset($_GET['page'])) {
			echo " - " . ((int)$_GET['page']) . " " . $text_page;
		} ?></title>

    <script type="text/javascript" src="catalog/view/theme/resale/js/jquery.min.js"></script>

	<?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>" type="text/javascript"></script>
	<?php } ?>
	<?php foreach ($analytics as $analytic) { ?>
		<?php echo $analytic; ?>
	<?php } ?>

    <link href="catalog/view/theme/resale/css/style.css" rel="stylesheet" type="text/css" media="all"/>

    <script type="application/x-javascript"> addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		} </script>
    <!-- //for-mobile-apps -->
    <!--fonts-->
    <link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <!--//fonts-->
    <!-- js -->
    <!-- js -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="catalog/view/theme/resale/js/bootstrap.min.js"></script>
    <script src="catalog/view/theme/resale/js/bootstrap-select.js"></script>
    <script src="catalog/view/theme/resale/js/common.js"></script>
    <script>
		$(document).ready(function () {
			var mySelect = $('#first-disabled2');

			$('#special').on('click', function () {
				mySelect.find('option:selected').prop('disabled', true);
				mySelect.selectpicker('refresh');
			});

			$('#special2').on('click', function () {
				mySelect.find('option:disabled').prop('disabled', false);
				mySelect.selectpicker('refresh');
			});

			$('#basic2').selectpicker({
				liveSearch: true,
				maxOptions: 1
			});
		});
    </script>
</head>
<body class="<?= $class; ?>">
<div class="header">
    <div class="container">
        <div class="header-top">
            <div class="logo">
                <a href="<?php echo $home; ?>">
                    <span>Re</span>
                    sale</a>
            </div>
            <div class="header-right">
                <div class="dropdown account">
                    <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle"
                       data-toggle="dropdown">
                        <i class="fa fa-user"></i>
                        <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
						<?php if ($logged) { ?>
                            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
						<?php } else { ?>
                            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
						<?php } ?>
                    </ul>
                </div>
                <div class="language">
					<?php echo $language; ?>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="<?php if ($og_url == $home) {
	echo 'main-banner ';
} ?> banner text-center">
    <div class="container">
        <h1>Sell or Advertise
            <span class="segment-heading">    anything online </span>
            with Resale
        </h1>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
        <a href="post-ad.html">Post Free Ad</a>
    </div>
</div>
