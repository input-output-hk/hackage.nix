{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      yi = false;
      dyre = true;
      threaded = false;
      gtk3 = true;
      loc = false;
      network-uri = true;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "leksah";
        version = "0.14.4.0";
      };
      license = "LicenseRef-GPL";
      copyright = "2007-2014 Juergen Nicklisch-Franken, Hamish Mackenzie";
      maintainer = "maintainer@leksah.org";
      author = "Juergen Nicklisch-Franken, Hamish Mackenzie";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/leksah";
      synopsis = "Haskell IDE written in Haskell";
      description = "An Integrated Development Environment for Haskell written in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (((((((([
          (hsPkgs.jsaddle)
          (hsPkgs.ghcjs-codemirror)
          (hsPkgs.hamlet)
          (hsPkgs.blaze-html)
          (hsPkgs.lens)
          (hsPkgs.pretty-show)
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.glib)
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
          (hsPkgs.leksah-server)
          (hsPkgs.ghc)
          (hsPkgs.strict)
          (hsPkgs.conduit)
          (hsPkgs.text)
          (hsPkgs.gio)
          (hsPkgs.transformers)
          (hsPkgs.executable-path)
          (hsPkgs.vcsgui)
          (hsPkgs.vcswrapper)
          (hsPkgs.QuickCheck)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hlint)
          (hsPkgs.vado)
          (hsPkgs.shakespeare)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [
            (hsPkgs.unix)
          ])) ++ pkgs.lib.optionals (system.isOsx) (if flags.gtk3
          then [
            (hsPkgs.gtk3-mac-integration)
          ]
          else [
            (hsPkgs.gtk-mac-integration)
          ])) ++ pkgs.lib.optionals (flags.yi) [
          (hsPkgs.yi)
          (hsPkgs.yi-language)
          (hsPkgs.yi-rope)
        ]) ++ pkgs.lib.optional (flags.yi && flags.dyre) (hsPkgs.dyre)) ++ (if flags.gtk3
          then [
            (hsPkgs.gtk3)
            (hsPkgs.gtksourceview3)
          ]
          else [
            (hsPkgs.gtk)
            (hsPkgs.gtksourceview2)
          ])) ++ (if flags.gtk3
          then [
            (hsPkgs.webkitgtk3)
            (hsPkgs.webkitgtk3-javascriptcore)
          ]
          else [
            (hsPkgs.webkit)
            (hsPkgs.webkit-javascriptcore)
          ])) ++ pkgs.lib.optionals (flags.loc && system.isLinux) [
          (hsPkgs.hgettext)
          (hsPkgs.setlocale)
        ]) ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2") (hsPkgs.binary-shared);
        libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32");
      };
      exes = {
        "leksah" = {
          depends = ([
            (hsPkgs.leksah)
            (hsPkgs.base)
            (hsPkgs.gtk3)
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32)) ++ pkgs.lib.optionals (system.isLinux && flags.loc) [
            (hsPkgs.hgettext)
            (hsPkgs.setlocale)
          ];
          libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32");
        };
        "bewleksah" = {
          depends = [
            (hsPkgs.leksah)
            (hsPkgs.base)
            (hsPkgs.jsaddle)
            (hsPkgs.ghcjs-dom)
          ] ++ (if flags.gtk3
            then [
              (hsPkgs.gtk3)
              (hsPkgs.gtksourceview3)
              (hsPkgs.webkitgtk3)
              (hsPkgs.webkitgtk3-javascriptcore)
            ]
            else [
              (hsPkgs.gtk)
              (hsPkgs.gtksourceview2)
              (hsPkgs.webkit)
              (hsPkgs.webkit-javascriptcore)
            ]);
        };
      };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.leksah)
            (hsPkgs.containers)
            (hsPkgs.ltk)
            (hsPkgs.leksah-server)
            (hsPkgs.hslogger)
            (hsPkgs.transformers)
            (hsPkgs.glib)
            (hsPkgs.monad-loops)
            (hsPkgs.text)
          ] ++ (if flags.gtk3
            then [
              (hsPkgs.gtk3)
              (hsPkgs.gtksourceview3)
              (hsPkgs.webkitgtk3)
            ]
            else [
              (hsPkgs.gtk)
              (hsPkgs.gtksourceview2)
              (hsPkgs.webkit)
            ])) ++ pkgs.lib.optional (flags.yi) (hsPkgs.yi);
        };
      };
    };
  }