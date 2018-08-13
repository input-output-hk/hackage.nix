{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "manatee";
        version = "0.1.5";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 ~ 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "The Haskell/Gtk+ Integrated Live Environment";
      description = "Manatee is Haskell integrated environment written in Haskell.\n\nThe goal of the Manatee project is to provide\na fast, safe and flexible integrated environment for haskell hacking.\n\nYou can consider it is new environment mix Gnome and Emacs.\nLike Gnome to provide friendly graphics interface and work efficient like Emacs.\n\nManatee use multi-processes framework, any sub-module running in separate process to protected core won't crash.\nSo it minimize your losses when some unexpected exception throw in extension.\n\nVideo at (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k>\n\nYou can find screenshots at : <http://goo.gl/MkVw>\n\nBelow is build step for Manatee:\n\n1) Install gold-linker to accelerate installation:\n\nI suggest use gold-linker instead ld to accelerate installation.\n\nIn Debian system, you just need do below command:\n\n> sudo aptitude install binutils-gold -y\n\nThis step is optional, it's okay use ld link program, just much slow. :)\n\n2) Install GHC compiler <http://www.haskell.org/ghc/download_ghc_6_12_3.html>:\n\nDownload ghc package for your system, then do below command :\n\n> ./configure && sudo make install\n\n3) Install C library:\nIn Debian use below command:\n\n> sudo aptitude install libgtksourceview2.0-dev libgconf2-dev libwebkit-dev libcurl4-openssl-dev libgtkimageview-dev libpoppler-glib-dev poppler-data libtagc0-dev libvte-dev -y\n\n4) Install cabal:\n\nDownload <http://hackage.haskell.org/packages/archive/cabal-install/0.8.2/cabal-install-0.8.2.tar.gz>\n\nDecompress cabal-install-0.8.2.tar.gz and do below command:\n\n> cd ./cabal-install-0.8.2 && sudo chmod +x ./bootstrap.sh && ./bootstrap.sh\n\n5) Install dependent Haskell library:\n\nFirst make sure `HOME/.cabal/bin/` in your PATH\n\nGeneric way is add `PATH=\$PATH:~\\/.cabal\\/bin` in your `~/.bashrc`\n\nThen do below command (NOTE: don't use root permission with cabal, otherwise Manatee can't work):\n\n> cabal update && cabal install alex happy c2hs gtk2hs-buildtools glib gio pango cairo gtk\n\n6) Install Manatee (same, don't use root permission):\n\n> cabal install manatee-core manatee-anything manatee-browser manatee-editor manatee-filemanager manatee-imageviewer manatee-ircclient manatee-mplayer manatee-pdfviewer manatee-processmanager manatee-reader manatee-curl manatee-terminal manatee\n\nThat's all, then type command \"manatee\" to play it! :)\n\nI have test, Manatee can works well in Gnome, KDE and XFCE\n\nUnfortunately, Manatee can't work in XMonad, please let me know if some XMonad hacker know how to fix it. :)\n\nVideo at (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n\nManatee is distributed framework, it allowed you install extension don't need depend each other, but it's easy to break if some package is older than core packages (manatee-core, manatee-anything, manatee). So please make sure *all* packages has update to newest version before you report bug to manatee-user\\@googlegroups.com . Thanks! :)\n";
      buildType = "Simple";
    };
    components = {
      "manatee" = {};
      exes = {
        "manatee" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.manatee-core)
            (hsPkgs.containers)
            (hsPkgs.unix)
            (hsPkgs.mtl)
            (hsPkgs.gtk-serialized-event)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.gtk)
            (hsPkgs.dbus-client)
            (hsPkgs.stm)
            (hsPkgs.cairo)
            (hsPkgs.directory)
            (hsPkgs.dbus-core)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }