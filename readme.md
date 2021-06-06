-----------------------------
DEMO  - https://bloggingwebsite.netlify.app/
-------------------------------


--------------------------------------
# BEST-BLOGGING-THEME
--------------------------------------

### THEME IMPORT GUIDE

------------------------------------------------
HOW TO IMPORT THIS THEME IN YOUR JEKYLL PROJECT.
------------------------------------------------

SO, Basically, we have  very easy  three steps to import theme in any Jekyll project.

STEP:1 Add this lines of code in YOUR Gemfile. (so just copy it and paste it on your gemfile)

GEMFILE ->   

*******************************************************************************
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
******************************************************************************************


STEP: 2 Also add this line of code in  _config.yml. (so just copy it and paste it on your _config.yml)
 
###### CONFIG.YML -> 
permalink: /blog/:title // IF YOU ARE SERVE BLOG SITE  LIKE, WWW.DOMAIN.COM THEN USE /title.
// BUT IF YOU ARE SERVE BLOG SITE LIKE, WWW.DOMAIN.COM/BLOG THEN USE SAME AS GIVEN PERMALINK: /blog/title.
             
paginate: '12' // BY DEFAULT 12 BLOG POST IN SINGLE PAGE, IF YOU WANT TO CHANGE THEN CHANGE ACCORDILY.
paginate_path: '/blog/page:num/'  // PAGINATE-PATH DENOTE WHEN WE WENT ANOTHER BLOG PAGE, THOSE URL LIKE THAT, WWW.DOMAIN.COM/BLOG/PAGE1/, ALSO CAN CHANGE.
             
### Build settings
theme: best-blogging-theme //ENSURE THAT THEME NAME WILL BE SAME AS IN GEMFILE THEME NAME. IT IS MANDTARY ALSO IN CONFIG.YML FILE
markdown: kramdown // IT WILL BE SAME .
             
when you paste all these things in your files. after that open terminal and write command: bundle install

-----------------------------------------------------------------------------
ENSURE THAT, WHEN WE CHANGED THESE FILES. THEN WE NEED TO DELETE GEMFILE.LOCK
AFTER THAT, HIT BUNDLE INSTALL 
PLEASE THIS WILL REQUIRED BEFORE HIT BUNDLE INSTALL.
-----------------------------------------------------------------------------

STEP: 3  SO, AFTER BUNDLE INSTALL

         -----------------------------------------------------
         ALL THE DEPENDENCY HAS BEEN INSTALLED IN YOUR PROJECT.
         ------------------------------------------------------
         
         ----------------------------------------------
         SUCCESFULLY THEME IMPORTED NOW IN YOUR PROJECT.
         ----------------------------------------------

-----------------------------------------------------------------------------
       
### blog layout Import guide:

-------------------------------
How to use blog layout by theme
-------------------------------

Before blog layout use, I hope theme will be imported in your project successfully. 
If not then GO TO TOP:

WE HAVE FOLLOWING TWO BLOG LAYOUTS:

#### 1. blog
#### 2. categories

*******************************
CREATE FILE FOR BLOG LAYOUT IN ROOT DIR:  
OR ANYWHERE ITS DEPEND UPON YOU.
*********************************

#### FOR EXAMPLE:

#### index.html  
//ensure that file extention will be .html, if .md then i am sure that you blog post pagination won't works.

---
layout: blog 
title: BloggingSite  //Title of blog
---

another example:
#### blog/index.html //inside blog folder

---
layout: blog 
title: BloggingSite  //Title of blog
---

*******************************
CREATE FILE FOR CATEGORIES LAYOUT IN ROOT DIR:  
*********************************

#### FOR EXAMPLE
#### categories.md
---
layout: categories
title: BloggingSite Categories // TITLE OF BLOG Categories
permalink: /categories
---

#### IF YOU ARE USING BLOG LAYUT UNDER BLOG FOLDER
---
layout: categories
title: BloggingSite Categories // TITLE OF BLOG Categories
permalink: /blog/categories  
---


#### Now,  you can see blog layout is visible in your project.

THESE LAYOUTS DATA DRIVEN BY JSON DATA OR YML FILES, YOU IF YOU WANT CHANGE FOR EXAMPLE:
#### TITLE, META, NAVLINK, LOGO, BLOGTITLE, TAGLINE, FOOTERLINK ETC.


--------------------------------------------------------------------------
#### CREATE blog(folder) in _data(dir), for ex:) _data/blog

UNDER THESE FOLLOWING JSON OR YML FILES. YOU CAN CHANGE DATA ACOORDING ON YOUR PROJECT.

#### 1. authors.yml
#### 2. blog.yml
#### 3. nav.json
#### 4. share.yml
#### 5. footer.json
#### 6. disquss comment system

#### authors.yml // BLOG POST AUTHOR CAN CHANGE HERE.

Manpreet:
  name: Manpreet singh
  image: /assets/images/manpreet.png
  bio: Author4 of Mediumish, a Bootstrap Medium styled template available for WordPress, HTML, Ghost and Jekyll. You are currently previewing Jekyll template demo.
  twitter: https://twitter.com/home

#### blog.yml  //CHANGE H1 OR TAGLING OF BLOG 
---
h1: Latest Posts from our Blog
tagline: Best Blogging Site

--- 
// REMOVE --- END OF THE LINE, ITS NOT REQUIRED. 

#### nav.json // NAVLINK CAN BE CHANGE .
{
    "navbarBrandText": "", //NAVTEXT LIKE "bloggingsite"
    "navbarBrandLogo": "/assets/images/bebo-logo.svg",  //LOGO
    "navItems":[
        {
         "name":"home",   //navlinks
         "url":"/home"    // navurl
        },
        {
         "name":"blog",
         "url":"/blog"
       }
     ]
}

you can add nav links according to your requirements.

#### share.yml //if you want change sharing handle then you can
####  Sharing options at the bottom of the post.
####  Icons from <https://fontawesome.com/>

label: 'Share'
platforms:
  - type: Twitter
    icon: 'fab fa-twitter'
    link: 'https://twitter.com/intent/tweet?url=URL'
  - type: Facebook
    icon: 'fab fa-facebook-square'
    link: 'https://www.facebook.com/sharer/sharer.php?u=URL'
  - type: Linkedin
    icon: 'fab fa-linkedin'
    link: 'https://www.linkedin.com/sharing/share-offsite/?url=URL'


#### footer.json 
{
    "footerMenu": {
      "color": "deepskyblue",
      "dropdown": [{
       "categoryName":"Cricket Posts",
       "links": [
          {
            "name": "blog1",
            "url":"/"
          },
          {
            "name": "blog2",
            "url":"/"
          },
          {
            "name": "blog3",
            "url":"/"
          }
        ]
      },
      {
        "categoryName":"Latest Posts",
        "links": [
           {
             "name": "blog1",
             "url":"/"
           },
           {
            "name": "blog1",
            "url":"/"
          },
          {
            "name": "blog1",
            "url":"/"
          }
          
         ]
       },
       {
        "categoryName":"Website Name",
        "links": [
           {
             "name": "Terms and conditions",
             "url":"/"
           },
           {
             "name": "Privacy Policy",
             "url":"/"
           },
           {
             "name": "Disclaimer",
             "url":"/"
           }
         ]
       }
      ]
    },

    "socialIcon":[
        {
            "target": "_blank",
            "href": "https://www.facebook.com/",
            "i": "fab fa-facebook-square"
        },
        {
            "target": "_blank",
            "href": "https://twitter.com/",
            "i": "fab fa-twitter-square"
        },
        {
            "target": "_blank",
            "href": "https://www.linkedin.com/",
            "i": "fab fa-linkedin-in"
        },
        {
            "target": "_blank",
            "href": "https://github.com/",
            "i": "fab fa-github"
        },
        {
            "target": "_blank",
            "href": "https://slack.com/intl/en-in/",
            "i": "fab fa-slack"
        }
    ]
}

<!-- IF YOU WANT TO CHANGE COPYRIGHT TEXT THEN GO TO CONFIG.YML FILE  AND EDIT COPYRIGHT TEXT VARIABLE -->




#### disquss comment system

sO, NOW YOU CAN DISQUSS COMMENT SYSTEM VERY EASILY IN YOUR PROJECT.
FIRST, YOU NEED TO CREATE ACCOUNT ON DISQUSS LINK: https://disqus.com/
AFTER THAT, CREATE ACCOUNT AND SETUP COMMENT SYSTEM FOR WEBSITE.

AFTER, CREATING ACCOUNT FOR WEBSITE, DISQUSS GIVE YOU SHORTNAME : FOR EXAMPLE : MYSITE

JUST COPY THAT SHORTNAME AND PASTE IT IN CONFIG.YML.
FOR EXAMPLE:

CONFIG.YML

disquss:
   shortname: yourshortname

after that you can see that comment system added to your website.


## so now you can also change color of theme for ex:) footer color,socialicons,expore section etc. and also added google analtyics

you just need to put you google analatyics id in _config.yml
for example look like- 
google_analytics: 'G-Your Id'

and also change the color in data driven files that we will provide in the top. now updated you can see that );;


## ENJOY THE BLOGGING THEME



## Theme Demo
## https://thefrondend.com/

## https://ultimateshyari.netlify.app/











         


