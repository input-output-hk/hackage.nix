{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "manatee-terminal"; version = "0.0.7"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Terminal Emulator extension for Manatee.";
      description = "manatee-terminal is terminal emulator extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nBecause VTE widget is not MVC design as Manatee's framework, so terminal process won't running in background like other extension, instead terminal process will kill when terminal buffer close by user.\n\nVTE widget will replace by MVC design terminal emulator widget in the future, as temporary solution, please make sure command have finish before you close terminal buffer, i warning you. :)\n\nVideo at (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://www.youtube.com/watch?v=A3DgKDVkyeM> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."manatee-core" or (errorHandler.buildDepError "manatee-core"))
          (hsPkgs."dbus-client" or (errorHandler.buildDepError "dbus-client"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gtk-serialized-event" or (errorHandler.buildDepError "gtk-serialized-event"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."vte" or (errorHandler.buildDepError "vte"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = { "manatee-terminal" = { buildable = true; }; };
      };
    }