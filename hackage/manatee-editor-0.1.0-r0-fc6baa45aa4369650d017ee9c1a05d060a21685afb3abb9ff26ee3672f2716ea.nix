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
      identifier = { name = "manatee-editor"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2010 ~ 2011 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Editor extension for Manatee.";
      description = "manatee-editor is editor extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nVideo (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://www.youtube.com/watch?v=A3DgKDVkyeM> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
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
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."gtksourceview2" or (errorHandler.buildDepError "gtksourceview2"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dbus-core" or (errorHandler.buildDepError "dbus-core"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = { "manatee-editor" = { buildable = true; }; };
      };
    }