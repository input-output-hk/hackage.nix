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
      identifier = { name = "manatee"; version = "0.0.5"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "The Haskell/Gtk+ Integrated Live Environment";
      description = "Manatee is Haskell integrated environment written in Haskell.\n\nThe goal of the Manatee project is to provide\na fast, safe and flexible integrated environment for haskell hacking.\n\nYou can consider it is new environment mix Gnome and Emacs.\nLike Gnome to provide friendly graphics interface and work efficient like Emacs.\n\nManatee use multi-processes framework, any sub-module running in separate process to protected core won't crash.\nSo it minimize your losses when some unexpected exception throw in extension.\n\nYou can find screenshots at : <http://goo.gl/MkVw>\n\nBelow is build step for Manatee:\n\n1) Install GHC compiler <http://www.haskell.org/ghc/download_ghc_6_12_3.html>:\n\nDownload ghc package for your system, then do below command :\n\n> ./configure && sudo make install\n\n2) Install C library:\nIn Debian use below command:\n\n> sudo aptitude install libgtksourceview2.0-dev libgconf2-dev libwebkit-dev libcurl4-openssl-dev libgtkimageview-dev libpoppler-glib-dev poppler-data libtagc0-dev -y\n\n3) Install cabal:\n\nIf you're haskell newbie, use below command to install cabal (haskell expert ignore this):\n\n> sudo aptitude install cabal-install -y\n\n4) Install dependent Haskell library:\n\nFirst make sure `HOME/.cabal/bin/` in your PATH\n\nGeneric way is add `PATH=$PATH:~\\/.cabal\\/bin` in your `~/.bashrc`\n\nThen do below command (NOTE: don't use root permission with cabal, otherwise Manatee can't work):\n\n> cabal update && cabal install happy c2hs gtk2hs-buildtools glib gio pango cairo gtk\n\n5) Install Manatee (same, don't use root permission):\n\n> cabal install manatee-core manatee-anything manatee-browser manatee-editor manatee-filemanager manatee-imageviewer manatee-ircclient manatee-mplayer manatee-pdfviewer manatee-processmanager manatee-reader manatee\n\nThat's all, then type command \"manatee\" to play it! :)\n\nYou can find simple manual at <http://haskell.org/haskellwiki/Manatee>\n\nNow Manatee looks can't work in XMonad, i'm working on it.\nIt's no problem if you use Gnome.\n";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "manatee" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."manatee-core" or (errorHandler.buildDepError "manatee-core"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."gtk-serialized-event" or (errorHandler.buildDepError "gtk-serialized-event"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."dbus-client" or (errorHandler.buildDepError "dbus-client"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."dbus-core" or (errorHandler.buildDepError "dbus-core"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }