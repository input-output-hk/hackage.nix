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
      identifier = { name = "manatee-browser"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2010 ~ 2011 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Browser extension for Manatee.";
      description = "manatee-browser is WebKit browser extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nVideo (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://www.youtube.com/watch?v=A3DgKDVkyeM> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
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
          (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = { "manatee-browser" = { buildable = true; }; };
      };
    }