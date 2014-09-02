## Font Awesome 4.2.0 Bootswatch Rails gem

[![Build Status](https://travis-ci.org/scottvrosenthal/twitter-bootswatch-rails-fontawesome.png?branch=master)](https://travis-ci.org/scottvrosenthal/twitter-bootswatch-rails-fontawesome)

  - Use to extend your [Twitter Bootswatch Rails](https://github.com/scottvrosenthal/twitter-bootswatch-rails) project with Font Awesome
  - Integrates [Font Awesome](http://fortawesome.github.io/Font-Awesome) less into the Rails Asset Pipeline
  - Easily override Font Awesome variables per bootswatch theme

## Installation

```ruby

gem 'twitter-bootswatch-rails', '~> 3.0'
gem 'twitter-bootswatch-rails-fontawesome', '~> 4.0'

gem 'twitter-bootswatch-rails-helpers'
```

or you can install from latest build;

```ruby
gem 'twitter-bootswatch-rails-fontawesome', :git => 'git://github.com/scottvrosenthal/twitter-bootswatch-rails-fontawesome.git'
```

Run bundle from command line

    bundle


## Usage defaults

To add Font Awesome to your [Bootswatch Rails](https://github.com/scottvrosenthal/twitter-bootswatch-rails/tree/2.3.2) project:

In application.css or [theme_name] css file just do the following:

```css
/*
 *= require_self
 *= require [theme_name]/loader
 *= require [theme_name]/bootswatch
 *= require fontawesome
*/
```

## Usage for theme_name customization

If you don't provide a [theme_name] the value defaults to **bootswatch** and adds directives to your application.css files.


Usage:


    rails g bootswatch:fontawesome:install [theme_name]

Example:


    rails g bootswatch:fontawesome:install admin
    rails g bootswatch:fontawesome:install storefront


Any of the above commands create a [theme_name]/font-awesome.less file for the passed in [theme_name].

If you had an existing admin bootswatch theme here's the contents of admin/font-awesome.less:


```less
@import "fontawesome/variables";
// Bootstrap
// Bootswatch Font Awesome

// Variables
// --------------------------

@fa-css-prefix:       fa;
@fa-version:          "4.2.0";
@fa-border-color:     #eee;
@fa-inverse:          #fff;
@fa-li-width:         (30em / 14);


// Imports
// --------------------------

@import "fontawesome/mixins";
@import "fontawesome/path";
@import "fontawesome/core";
@import "fontawesome/larger";
@import "fontawesome/fixed-width";
@import "fontawesome/list";
@import "fontawesome/bordered-pulled";
@import "fontawesome/spinning";
@import "fontawesome/rotated-flipped";
@import "fontawesome/stacked";
@import "fontawesome/icons";
```

Then in the [theme_name] css file just do the following:

```css
/*
 *= require_self
 *= require [theme_name]/loader
 *= require [theme_name]/bootswatch
 *= require [theme_name]/font-awesome
*/
```

## Html Usage

```html
<i class="fa fa-camera-retro fa-lg"></i>
<i class="fa fa-camera-retro fa-2x"></i>
<i class="fa fa-camera-retro fa-3x"></i>
<i class="fa fa-camera-retro fa-4x"></i>
<i class="fa fa-camera-retro fa-5x"></i>
```

## Changelog

  - v4.2.0.0
    * Updated to use Font Awesome v4.2.0
