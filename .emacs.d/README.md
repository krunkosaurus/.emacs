# My .emacs file

After some requests I've uploaded my .emacs and site-lisp files. It's a little messy but it's home. Any errors in it our mine, and all awesomeness is the culmination of years of customization and plain cut-and-paste code from other .emacs files I've encountered and analyzed through the years.

To use it, you should really be using the latest Emacs (currently 23.4 as both Mac and Unix-systems both contain really old versions of Emacs without good Org-mode or js-mode support.) See my blog post on [compiling latest command-line emacs on Mac OS X or any Unix based system](http://readystate4.com/2011/04/19/installing-latest-command-line-emacs-on-mac-os-x/)

It contains the following:

* A custom color scheme I like.
* Enabling seeing trailing white-spaces and shortcut to killing them
* Fuzzy matching for file autocomplete (ido-enable-flex-matching) - A MUST.
* Shortcut references for [http://orgmode.org/](Org-mode) "To Do" list and other resources inside Dropbox.

The following 3rd party libraries:

* [magit-mode](http://magit.github.com/magit/magit.html) for awesome built in git support.
* [Yasnippet-bundle](https://github.com/capitaomorte/yasnippet) for text-expand support so you can write time-saving, text-expanding shorthand. Comes with some preconfigures YaSnippets for HTML and JavaScript.
* [org2blog](https://github.com/punchagan/org2blog) which enables you to write your blog posts in org-mode and post them to your wordpress blog.
* [markdown-mode](https://github.com/defunkt/markdown-mode) (I use [Mou](http://mouapp.com/) lately and don't really use this much anymore.)
* [haml-mode](https://github.com/nex3/haml-mode) - Not a big fan of HAML but somtimes I need to open up a HAML file.
* [sass-mode](https://github.com/nex3/sass-mode) - I Love Sass and can finally indent correctly