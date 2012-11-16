osx-location.el
===============

This library uses OS X CoreLocation services to put useful
information into variables `osx-location-latitude' and
`osx-location-longitude`.

Installation
=============

If you choose not to use one of the convenient packages in
[Melpa][melpa] and [Marmalade][marmalade], you'll need to add the
directory containing `osx-location.el` and `EmacsLocationHelper` to
your `load-path`, and then `(require 'osx-location)`.

If you don't trust the required bundled executable
(`EmacsLocationHelper`) which does the communication with
CoreServices, you can build it yourself from the
[instructions here](https://gist.github.com/1416248).


Usage
=====

Start monitoring the location asynchronously like this:

     M-x osx-location-watch

To add code which responds to location changes, use
`osx-location-changed-hook`.  For example, you might add a hook
function which updates `calendar-latitude` and `calendar-longitude`
(defined in the built-in library `solar'), and then use
[rase.el](https://github.com/m00natic/rase) to execute code
automatically at sunrise or sunset.

[marmalade]: http://marmalade-repo.org
[melpa]: http://melpa.milkbox.net

<hr>

[![](http://api.coderwall.com/purcell/endorsecount.png)](http://coderwall.com/purcell)

[![](http://www.linkedin.com/img/webpromo/btn_liprofile_blue_80x15.png)](http://uk.linkedin.com/in/stevepurcell)
