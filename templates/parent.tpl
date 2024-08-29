<!DOCTYPE html>
<html lang="en" data-theme="light" class="active">

<head>
  <meta charset="utf-8" />
  <link rel="icon" href="./assets/images/favicon/favicon.jpg" />
  <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' />
  <meta name="theme-color" content="#fff" />
  <meta name="description" content="" />


  <!-- Favicon icon-->
  <link rel="shortcut icon" type="image/x-icon" href="./assets/images/favicon/smicon.png">

  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <!-- Libs CSS -->
  <link href="./assets/fonts/feather/feather.css" rel="stylesheet">
  <link href="./assets/libs/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="./assets/libs/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
  <link href="./assets/libs/dragula/dist/dragula.min.css" rel="stylesheet" />
  <link href="./assets/libs/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet" />
  <link href="./assets/libs/dropzone/dist/dropzone.css" rel="stylesheet" />
  <link href="./assets/libs/magnific-popup/dist/magnific-popup.css" rel="stylesheet" />
  <link href="./assets/libs/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
  <link href="./assets/libs/@yaireo/tagify/dist/tagify.css" rel="stylesheet">
  <link href="./assets/libs/tiny-slider/dist/tiny-slider.css" rel="stylesheet">
  <link href="./assets/libs/tippy.js/dist/tippy.css" rel="stylesheet">
  <link href="./assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet">
  <link href="./assets/libs/prismjs/themes/prism-okaidia.css" rel="stylesheet">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
    rel="stylesheet">

  <!-- Theme CSS -->
  <link rel="stylesheet" href="./assets/css/theme.min.css">
  <link rel="stylesheet" href="./assets/css/index.css">

  <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
  <!--
      manifest.json provides metadata used when your web app is installed on a
      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/
    -->
  <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
  <!--
      Notice the use of %PUBLIC_URL% in the tags above.
      It will be replaced with the URL of the `public` folder during the build.
      Only files inside the `public` folder can be referenced from the HTML.

      Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will
      work correctly both with client-side routing and a non-root public URL.
      Learn how to configure a non-root public URL by running `npm run build`.
    -->

  <title>{block name=title}....{/block}</title>

  <style>
    body {
      overflow-x: hidden;
      /* Hide horizontal scrollbar */
    }

    html {
      scroll-behavior: smooth;
    }

    #passalert {
      display: none;
    }
  </style>
</head>

<body class="bg-back">

  {block name=body}

    .......
  {/block}

  <!-- Scripts -->
  <!-- Libs JS -->
  <script src="./assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="./assets/libs/odometer/odometer.min.js"></script>
  <script src="./assets/libs/jquery-slimscroll/jquery.slimscroll.min.js"></script>
  <script src="./assets/libs/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
  <script src="./assets/libs/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
  <script src="./assets/libs/flatpickr/dist/flatpickr.min.js"></script>
  <script src="./assets/libs/inputmask/dist/jquery.inputmask.min.js"></script>
  <script src="./assets/libs/apexcharts/dist/apexcharts.min.js"></script>
  <script src="./assets/libs/quill/dist/quill.min.js"></script>
  <script src="./assets/libs/file-upload-with-preview/dist/file-upload-with-preview.min.js"></script>
  <script src="./assets/libs/dragula/dist/dragula.min.js"></script>
  <script src="./assets/libs/bs-stepper/dist/js/bs-stepper.min.js"></script>
  <script src="./assets/libs/dropzone/dist/min/dropzone.min.js"></script>
  <script src="./assets/libs/jQuery.print/jQuery.print.js"></script>
  <script src="./assets/libs/prismjs/prism.js"></script>
  <script src="./assets/libs/prismjs/components/prism-scss.min.js"></script>
  <script src="./assets/libs/@yaireo/tagify/dist/tagify.min.js"></script>
  <script src="./assets/libs/tiny-slider/dist/min/tiny-slider.js"></script>
  <script src="./assets/libs/@popperjs/core/dist/umd/popper.min.js"></script>
  <script src="./assets/libs/tippy.js/dist/tippy-bundle.umd.min.js"></script>
  <script src="./assets/libs/typed.js/lib/typed.min.js"></script>
  <script src="./assets/libs/jsvectormap/dist/js/jsvectormap.min.js"></script>
  <script src="./assets/libs/jsvectormap/dist/maps/world.js"></script>
  <script src="./assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="./assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
  <script src="./assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
  <script src="./assets/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
  <script src="./assets/libs/prismjs/plugins/toolbar/prism-toolbar.min.js"></script>
  <script src="./assets/libs/prismjs/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>


  <!-- Theme JS -->
  <script src="./assets/js/theme.min.js"></script>

  <script>
    var myInput = document.getElementById("password");

    myInput.onfocus = function() {
      document.getElementById("passalert").style.display = "block";
    }

    myInput.onblur = function() {
      document.getElementById("passalert").style.display = "none";
    }
  </script>

</body>

</html>