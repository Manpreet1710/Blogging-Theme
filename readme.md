**************************************
BEST-BLOGGIN-THEME
**************************************

************************************************
HOW TO IMPORT THIS THEME IN YOUR JEKYLL PROJECT.
************************************************

SO, Basically, we have  very easy  three steps to import theme in any Jekyll project.

STEP:1 Add this lines of code in YOUR Gemfile. (so just copy it and paste it on your gemfile)

GEMFILE ->   

source "https://rubygems.org"

gem "jekyll", "~> 3.9.0"   // JEKYLL VERSION SHOULD BE SAME

gem 'best-blogging-theme', '~> 0.1.2' //THEME NAME SHOULD BE SAME, BUT VERSION WILL BE CHANGED AFTER LATEST UPDATE, SO  PLEASE FOLLOW OUR RUBY GEMS: https://rubygems.org/gems/best-blogging-theme, WHERE YOU CAN CHECK IN WHICH LATEST VERSION RUNNING IN THE THEME.

gem "kramdown-parser-gfm"   // THIS WILL BE SAME 

FOLLOWING PLUGINS ARE ALSO REQUIRED:

group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-sitemap"
  gem "jekyll-include-cache"
  gem 'jekyll-paginate'
end


STEP: 2 Also add this line of code in  _config.yml. (so just copy it and paste it on your _config.yml)
 
CONFIG.YML -> 
permalink: /blog/:title // IF YOU ARE SERVE BLOG SITE  LIKE, WWW.DOMAIN.COM THEN USE /title.
// BUT IF YOU ARE SERVE BLOG SITE LIKE, WWW.DOMAIN.COM/BLOG THEN USE SAME AS GIVEN PERMALINK: /blog/title.
             
paginate: '12' // BY DEFAULT 12 BLOG POST IN SINGLE PAGE, IF YOU WANT TO CHANGE THEN CHANGE ACCORDILY.
paginate_path: '/blog/page:num/'  // PAGINATE-PATH DENOTE WHEN WE WENT ANOTHER BLOG PAGE, THOSE URL LIKE THAT, WWW.DOMAIN.COM/BLOG/PAGE1/, ALSO CAN CHANGE.
             
# Build settings
theme: best-blogging-theme //ENSURE THAT THEME NAME WILL BE SAME AS IN GEMFILE THEME NAME. IT IS MANDTARY ALSO IN CONFIG.YML FILE
markdown: kramdown // IT WILL BE SAME .
             
when you paste all these things in your files. after that open terminal and write command: bundle install

****************************************************************************
ENSURE THAT, WHEN WE CHANGED THESE FILES. THEN WE NEED TO DELETE GEMFILE.LOCK
AFTER THAT, HIT BUNDLE INSTALL 
PLEASE THIS WILL REQUIRED BEFORE HIT BUNDLE INSTALL.
******************************************************************************

STEP: 3  SO, AFTER BUNDLE INSTALL

         ******************************************************
         ALL THE DEPENDENCY HAS BEEN INSTALLED IN YOUR PROJECT.
         ******************************************************
         
         ***********************************************
         SUCCESFULLY THEME IMPORTED NOW IN YOUR PROJECT.
         **********************************************
         


