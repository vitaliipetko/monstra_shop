    <footer class="footer">
      <div class="container">
        <div class="footer__subscribe">
          <!-- <div class="row">
            <div class="col-lg-6 col-sm-12">
              <p class="footer__subscribe--title sm-center">subscribe to our news</p>
            </div>
            <div class="col-lg-6 col-sm-12">
              <form class="footer__subscribe--form" action="#">
                <input class="footer__subscribe--form-email" type="email" name="email" placeholder="Your email">
                <input class="footer__subscribe--form-btn" type="submit" value="send">
              </form>
            </div>
          </div> -->
        </div>
        <div class="row">
          <div class="col-lg-3 col-sm-4 col-xs-12 xs-center"><a href="/"><img src="/catalog/view/theme/monstra/assets/images/icons/footer_logo.png" alt=""></a>
            <p class="footer__find">find us on</p><a class="footer__find--link-fb" href="https://www.facebook.com/MONSTRAbrand/" target="_blank">Facebook</a><a class="footer__find--link-ins" href="https://www.instagram.com/monstra_official" target="_blank">Instagram</a>
          </div>
          <div class="col-xs-12">
            <div class="footer__stories--mobile">
              <div class="row">
                <?php foreach ($instagram['posts'] as $post) {?>
                  <a class="footer__stories--link" href="<?php echo $post['link']?>" target="_blank" title="<?php echo $post['title']?>"><img src="<?php echo $post['img']; ?>" alt="<?php echo $post['title']?>"></a>
                <?php } ?>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-sm-4 hidden-xs">
            <ul class="footer__nav">
              <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
              <li><a href="/index.php?route=blog/blog"><?php echo $blog; ?></a></li>
              <li><a href="<?php echo $contact; ?>"><?php echo $contacts ?></a></li>
            </ul>
          </div>
          <div class="col-lg-3 col-sm-4 col-xs-12">
            <ul class="footer__nav">
              <li><a href="/index.php?route=account/login"><?php echo $text_account; ?></a></li>
              <li><a href="/index.php?route=checkout/cart"><?php echo $text_cart; ?></a></li>
              <?php foreach ($informations as $information) { ?>
                <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
          <div class="col-lg-3 hidden-sm">
            <div class="footer__stories">
              <p>stories from instagram</p>
              <div class="row">
                <?php foreach ($instagram['posts'] as $post) {?>
                  <a class="footer__stories--link" href="<?php echo $post['link']?>" target="_blank" title="<?php echo $post['title']?>"><img src="<?php echo $post['img']; ?>" alt="<?php echo $post['title']?>"></a>
                <?php } ?>
              </div>
            </div>
          </div>
        </div>
        <p class="footer__copyright">© 2018 Monstra - All rights reserved</p>
      </div>
    </footer>
    <script src="/catalog/view/theme/monstra/assets/js/select.min.js"></script>
    <script src="/catalog/view/theme/monstra/assets/js/slick.min.js"></script>
    <script src="/catalog/view/theme/monstra/assets/js/main.min.js"></script>
  </body>
</html>