<!-- footer_start  -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-md-6 col-lg-6 ">
                        <div class="footer_widget">
                            <div class="footer_logo">
                                <a href="#">
                                    <img src="<?= BASEURL; ?>/assets_web/img/zakatin.png" alt="">
                                </a>
                            </div>
                            <p class="address_text">
                            </p>
                            <div class="socail_links">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <i class="ti-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="ti-pinterest"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-linkedin"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>

                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget">
                            <h3 class="footer_title">
                                Kontak
                            </h3>
                            <ul class="address_line">
                                <li>+6281395344005</li>
                                <li><a href="#">yorissasilviana02@gmail.com</a></li>
                                <li>Bolenglang RT03/RW05, Kertasari, Ciamis</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="col-xl-3  col-md-6 col-lg-3">
                        <div class="footer_widget">
                            <h3 class="footer_title">
                                Quick Link
                            </h3>
                            <ul class="links">
                                <li><a href="<?=BASEURL;?>/Web/profil">Profil</a></li>
                                <li><a href="<?=BASEURL;?>/Web/partner">Kerjasama Pihak Mesjid</a></li>
                                <li><a href="<?=BASEURL;?>/Web/donasi">Donasi</a></li>
                                <li><a href="<?=BASEURL;?>/Web/contact">Kontak</a></li>
                                <li><a href="<?= BASEURL; ?>/login/">Login</a></li>
                            </ul>
                        </div>
                    </div>
                    



                </div>
            </div>
        </div>
        <div class="copy-right_text">
            <div class="container">
                <div class="bordered_1px"></div>
                <div class="row">
                    <div class="col-xl-12">
                        <p class="copy_right text-center">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &#169; <script type='text/javascript'>var creditsyear = new Date();document.write(creditsyear.getFullYear());</script> <a expr:href='data:blog.homepageUrl'><data:blog.title/></a> All rights reserved | Repost by <a target='_blank'>Yorissa Silviana</a>
  <!-- | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer_end  -->


    <!-- JS here -->
    <script src="<?= BASEURL; ?>/assets_web/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/popper.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/bootstrap.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/owl.carousel.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/isotope.pkgd.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/ajax-form.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/waypoints.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/jquery.counterup.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/imagesloaded.pkgd.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/scrollIt.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/jquery.scrollUp.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/wow.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/nice-select.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/jquery.slicknav.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/jquery.magnific-popup.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/plugins.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/gijgo.min.js"></script>

    <!--contact js-->
    <script src="<?= BASEURL; ?>/assets_web/js/contact.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/jquery.ajaxchimp.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/jquery.form.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/jquery.validate.min.js"></script>
    <script src="<?= BASEURL; ?>/assets_web/js/mail-script.js"></script>

    <script src="<?= BASEURL; ?>/assets_web/js/main.js"></script>
    <script>
        $('#datepicker').datepicker({
            iconsLibrary: 'fontawesome',
            disableDaysOfWeek: [0, 0],
        //     icons: {
        //      rightIcon: '<span class="fa fa-caret-down"></span>'
        //  }
        });
        $('#datepicker2').datepicker({
            iconsLibrary: 'fontawesome',
            icons: {
             rightIcon: '<span class="fa fa-caret-down"></span>'
         }

        });
        var timepicker = $('#timepicker').timepicker({
         format: 'HH.MM'
     });
    </script>
</body>

</html>
