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
      identifier = { name = "manatee-pdfviewer"; version = "0.0.5"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "PDF viewer extension for Manatee.";
      description = "manatee-pdfviewer is PDF viewer extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nIf you see Chinese garbled in pdf viewer, make sure install package `poppler-data`\n\nFirst use below command install `poppler-data' in Debain:\n\n> sudo aptitude install poppler-data -y\n\nAnd replace Chinese font string in file `/etc/fonts/conf.d/49-sansserif.conf'\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
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
          (hsPkgs."poppler" or (errorHandler.buildDepError "poppler"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = { "manatee-pdfviewer" = { buildable = true; }; };
      };
    }