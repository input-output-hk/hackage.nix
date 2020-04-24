{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "leksah"; version = "0.16.2.2"; };
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
      "library" = {
        depends = ((((((((([
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
          (hsPkgs."gi-glib" or ((hsPkgs.pkgs-errors).buildDepError "gi-glib"))
          (hsPkgs."gi-gobject" or ((hsPkgs.pkgs-errors).buildDepError "gi-gobject"))
          (hsPkgs."gi-gio" or ((hsPkgs.pkgs-errors).buildDepError "gi-gio"))
          (hsPkgs."gi-cairo" or ((hsPkgs.pkgs-errors).buildDepError "gi-cairo"))
          (hsPkgs."gi-gdk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdk"))
          (hsPkgs."gi-gdkpixbuf" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdkpixbuf"))
          (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
          (hsPkgs."gi-pango" or ((hsPkgs.pkgs-errors).buildDepError "gi-pango"))
          (hsPkgs."gi-gtksource" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtksource"))
          (hsPkgs."gi-gtk-hs" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk-hs"))
          (hsPkgs."ghcjs-codemirror" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-codemirror"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa-text"))
          (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."ltk" or ((hsPkgs.pkgs-errors).buildDepError "ltk"))
          (hsPkgs."binary-shared" or ((hsPkgs.pkgs-errors).buildDepError "binary-shared"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."executable-path" or ((hsPkgs.pkgs-errors).buildDepError "executable-path"))
          (hsPkgs."vcsgui" or ((hsPkgs.pkgs-errors).buildDepError "vcsgui"))
          (hsPkgs."vcswrapper" or ((hsPkgs.pkgs-errors).buildDepError "vcswrapper"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
          (hsPkgs."vado" or ((hsPkgs.pkgs-errors).buildDepError "vado"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))
          (hsPkgs."haskell-gi-overloading" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-overloading"))
          ] ++ (if system.isWindows
          then [
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            ]
          else [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."gi-gtkosxapplication" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtkosxapplication"))) ++ (if flags.webkit2 && !system.isWindows
          then [
            (hsPkgs."gi-webkit2" or ((hsPkgs.pkgs-errors).buildDepError "gi-webkit2"))
            ]
          else [
            (hsPkgs."gi-webkit" or ((hsPkgs.pkgs-errors).buildDepError "gi-webkit"))
            ])) ++ (pkgs.lib).optionals (flags.yi) [
          (hsPkgs."yi" or ((hsPkgs.pkgs-errors).buildDepError "yi"))
          (hsPkgs."yi-language" or ((hsPkgs.pkgs-errors).buildDepError "yi-language"))
          (hsPkgs."yi-rope" or ((hsPkgs.pkgs-errors).buildDepError "yi-rope"))
          ]) ++ (pkgs.lib).optional (flags.yi && flags.dyre) (hsPkgs."dyre" or ((hsPkgs.pkgs-errors).buildDepError "dyre"))) ++ (pkgs.lib).optionals (flags.codemirror) [
          (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ]) ++ (pkgs.lib).optionals (flags.loc && system.isLinux) [
          (hsPkgs."hgettext" or ((hsPkgs.pkgs-errors).buildDepError "hgettext"))
          (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
          ]) ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2") (hsPkgs."binary-shared" or ((hsPkgs.pkgs-errors).buildDepError "binary-shared"))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."leksah-server" or ((hsPkgs.pkgs-errors).buildDepError "leksah-server"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32"));
        pkgconfig = (pkgs.lib).optional (flags.gtk-318) (pkgconfPkgs."gtk+-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gtk+-3.0")) ++ (pkgs.lib).optional (flags.gtk-320) (pkgconfPkgs."gtk+-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gtk+-3.0"));
        buildable = true;
        };
      exes = {
        "leksah" = {
          depends = (([
            (hsPkgs."leksah" or ((hsPkgs.pkgs-errors).buildDepError "leksah"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gi-gtk-hs" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk-hs"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))) ++ (pkgs.lib).optionals (system.isLinux && flags.loc) [
            (hsPkgs."hgettext" or ((hsPkgs.pkgs-errors).buildDepError "hgettext"))
            (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
            ]) ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."leksah-server" or ((hsPkgs.pkgs-errors).buildDepError "leksah-server"));
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32"));
          buildable = true;
          };
        };
      };
    }