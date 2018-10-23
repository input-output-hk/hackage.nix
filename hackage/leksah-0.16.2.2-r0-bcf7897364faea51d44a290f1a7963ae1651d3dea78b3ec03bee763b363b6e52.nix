{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      webkit2 = true;
      yi = false;
      codemirror = false;
      dyre = true;
      threaded = true;
      loc = false;
      network-uri = true;
      gtk-318 = true;
      gtk-320 = true;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "leksah";
        version = "0.16.2.2";
      };
      license = "LicenseRef-GPL";
      copyright = "2007-2016 Juergen Nicklisch-Franken, Hamish Mackenzie, Jacco Krijnen, JP Moresmau";
      maintainer = "maintainer@leksah.org";
      author = "Juergen Nicklisch-Franken, Hamish Mackenzie, Jacco Krijnen, JP Moresmau";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/leksah";
      synopsis = "Haskell IDE written in Haskell";
      description = "An Integrated Development Environment for Haskell written in Haskell.";
      buildType = "Simple";
    };
    components = {
      "leksah" = {
        depends  = ((((((((([
          (hsPkgs.base-compat)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-cairo)
          (hsPkgs.gi-gdk)
          (hsPkgs.gi-gdkpixbuf)
          (hsPkgs.gi-gtk)
          (hsPkgs.gi-pango)
          (hsPkgs.gi-gtksource)
          (hsPkgs.gi-gtk-hs)
          (hsPkgs.ghcjs-codemirror)
          (hsPkgs.blaze-html)
          (hsPkgs.pretty-show)
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.regex-base)
          (hsPkgs.utf8-string)
          (hsPkgs.array)
          (hsPkgs.time)
          (hsPkgs.ltk)
          (hsPkgs.binary-shared)
          (hsPkgs.deepseq)
          (hsPkgs.hslogger)
          (hsPkgs.strict)
          (hsPkgs.conduit)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.executable-path)
          (hsPkgs.vcsgui)
          (hsPkgs.vcswrapper)
          (hsPkgs.QuickCheck)
          (hsPkgs.hlint)
          (hsPkgs.vado)
          (hsPkgs.shakespeare)
          (hsPkgs.cpphs)
          (hsPkgs.stm)
          (hsPkgs.split)
          (hsPkgs.HTTP)
          (hsPkgs.fsnotify)
          (hsPkgs.haskell-gi-overloading)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [
            (hsPkgs.unix)
          ])) ++ pkgs.lib.optional (system.isOsx) (hsPkgs.gi-gtkosxapplication)) ++ (if flags.webkit2 && !system.isWindows
          then [ (hsPkgs.gi-webkit2) ]
          else [
            (hsPkgs.gi-webkit)
          ])) ++ pkgs.lib.optionals (flags.yi) [
          (hsPkgs.yi)
          (hsPkgs.yi-language)
          (hsPkgs.yi-rope)
        ]) ++ pkgs.lib.optional (flags.yi && flags.dyre) (hsPkgs.dyre)) ++ pkgs.lib.optionals (flags.codemirror) [
          (hsPkgs.jsaddle)
          (hsPkgs.lens)
        ]) ++ pkgs.lib.optionals (flags.loc && system.isLinux) [
          (hsPkgs.hgettext)
          (hsPkgs.setlocale)
        ]) ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2") (hsPkgs.binary-shared)) ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs.ghc)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.leksah-server)
        ];
        libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32");
        pkgconfig = pkgs.lib.optional (flags.gtk-318) (pkgconfPkgs.gtk+-3.0) ++ pkgs.lib.optional (flags.gtk-320) (pkgconfPkgs.gtk+-3.0);
      };
      exes = {
        "leksah" = {
          depends  = (([
            (hsPkgs.leksah)
            (hsPkgs.base)
            (hsPkgs.gi-gtk-hs)
            (hsPkgs.stm)
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32)) ++ pkgs.lib.optionals (system.isLinux && flags.loc) [
            (hsPkgs.hgettext)
            (hsPkgs.setlocale)
          ]) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs.leksah-server);
          libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32");
        };
      };
    };
  }