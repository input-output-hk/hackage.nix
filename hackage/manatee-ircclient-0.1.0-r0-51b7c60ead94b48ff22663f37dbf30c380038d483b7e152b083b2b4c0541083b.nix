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
      identifier = { name = "manatee-ircclient"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2010 ~ 2011 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "IRC client extension for Manatee.";
      description = "manatee-ircclient is IRC client extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nDefault configuration template at Config\\/IrcClient.hs, copy to directory `HOME/.manatee/config/`.\n\nNote, you need re-install package to start the configuration file take effect the next time,\n\nVideo (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://www.youtube.com/watch?v=A3DgKDVkyeM> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
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
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dbus-core" or (errorHandler.buildDepError "dbus-core"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."gtksourceview2" or (errorHandler.buildDepError "gtksourceview2"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
          (hsPkgs."fastirc" or (errorHandler.buildDepError "fastirc"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."nano-md5" or (errorHandler.buildDepError "nano-md5"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."GoogleTranslate" or (errorHandler.buildDepError "GoogleTranslate"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."MorseCode" or (errorHandler.buildDepError "MorseCode"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
        buildable = true;
        };
      exes = {
        "manatee-irc-daemon" = { buildable = true; };
        "manatee-ircclient" = { buildable = true; };
        };
      };
    }