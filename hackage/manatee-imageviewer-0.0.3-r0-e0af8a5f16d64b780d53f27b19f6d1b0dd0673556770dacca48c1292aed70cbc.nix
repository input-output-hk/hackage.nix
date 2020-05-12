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
      identifier = { name = "manatee-imageviewer"; version = "0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Image viewer extension for Manatee.";
      description = "manatee-imageviewer is image viewer extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nManual look <http://haskell.org/haskellwiki/Manatee>\n\nScreenshot at <http://goo.gl/MkVw>\n\nIRC channel:\n\nirc.freenode.net 6667 <##manatee>\n";
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
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gio" or (errorHandler.buildDepError "gio"))
          (hsPkgs."gtkimageview" or (errorHandler.buildDepError "gtkimageview"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = { "manatee-imageviewer" = { buildable = true; }; };
      };
    }