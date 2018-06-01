# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
  # application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w(
  css/font-awesome.css
  css/bootstrap.css
  css/animate.css
  css/waves.css
  css/layout.css
  css/components.css
  css/plugins.css
  css/common-styles.css
  css/pages.css
  css/responsive.css
  css/matmix-iconfont.css
  politics.css
  js/jquery-1.11.2.min.js
  js/jquery-migrate-1.2.1.min.js
  js/jquery.loadmask.js
  js/jRespond.min.js
  js/bootstrap.min.js
  js/nav-accordion.js
  js/hoverintent.js
  js/waves.js
  js/icheck.js
  js/select2.js
  js/underscore.js
  js/jquery.elastic.js
  js/jquery.events.input.js
  js/jquery.mentionsInput.js
  js/bootstrap-filestyle.js
  js/summernote.min.js
  js/chart/sparkline/jquery.sparkline.js
  js/chart/easypie/jquery.easypiechart.min.js
  js/smart-resize.js
  js/jquery.dataTables.js
  js/dataTables.responsive.js
  js/dataTables.tableTools.js
  js/dataTables.bootstrap.js
  js/stacktable.js
  js/bootbox.js
  js/sweetalert.js
  js/layout.init.js
  js/matmix.init.js
  js/retina.min.js  )
