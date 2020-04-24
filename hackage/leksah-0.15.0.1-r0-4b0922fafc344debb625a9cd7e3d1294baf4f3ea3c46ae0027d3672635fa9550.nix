{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "leksah"; version = "0.15.0.1"; };
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
          (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
          (hsPkgs."ghcjs-codemirror" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-codemirror"))
          (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
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
          (hsPkgs."leksah-server" or ((hsPkgs.pkgs-errors).buildDepError "leksah-server"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."gio" or ((hsPkgs.pkgs-errors).buildDepError "gio"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."executable-path" or ((hsPkgs.pkgs-errors).buildDepError "executable-path"))
          (hsPkgs."vcsgui" or ((hsPkgs.pkgs-errors).buildDepError "vcsgui"))
          (hsPkgs."vcswrapper" or ((hsPkgs.pkgs-errors).buildDepError "vcswrapper"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
          (hsPkgs."vado" or ((hsPkgs.pkgs-errors).buildDepError "vado"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          ] ++ (if system.isWindows
          then [
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            ]
          else [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ])) ++ (pkgs.lib).optionals (system.isOsx) (if flags.gtk3
          then [
            (hsPkgs."gtk3-mac-integration" or ((hsPkgs.pkgs-errors).buildDepError "gtk3-mac-integration"))
            ]
          else [
            (hsPkgs."gtk-mac-integration" or ((hsPkgs.pkgs-errors).buildDepError "gtk-mac-integration"))
            ])) ++ (pkgs.lib).optionals (flags.yi) [
          (hsPkgs."yi" or ((hsPkgs.pkgs-errors).buildDepError "yi"))
          (hsPkgs."yi-language" or ((hsPkgs.pkgs-errors).buildDepError "yi-language"))
          (hsPkgs."yi-rope" or ((hsPkgs.pkgs-errors).buildDepError "yi-rope"))
          ]) ++ (pkgs.lib).optional (flags.yi && flags.dyre) (hsPkgs."dyre" or ((hsPkgs.pkgs-errors).buildDepError "dyre"))) ++ (if flags.gtk3
          then [
            (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
            (hsPkgs."gtksourceview3" or ((hsPkgs.pkgs-errors).buildDepError "gtksourceview3"))
            ]
          else [
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."gtksourceview2" or ((hsPkgs.pkgs-errors).buildDepError "gtksourceview2"))
            ])) ++ (if flags.gtk3
          then [
            (hsPkgs."webkitgtk3" or ((hsPkgs.pkgs-errors).buildDepError "webkitgtk3"))
            (hsPkgs."webkitgtk3-javascriptcore" or ((hsPkgs.pkgs-errors).buildDepError "webkitgtk3-javascriptcore"))
            ]
          else [
            (hsPkgs."webkit" or ((hsPkgs.pkgs-errors).buildDepError "webkit"))
            (hsPkgs."webkit-javascriptcore" or ((hsPkgs.pkgs-errors).buildDepError "webkit-javascriptcore"))
            ])) ++ (pkgs.lib).optionals (flags.loc && system.isLinux) [
          (hsPkgs."hgettext" or ((hsPkgs.pkgs-errors).buildDepError "hgettext"))
          (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
          ]) ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2") (hsPkgs."binary-shared" or ((hsPkgs.pkgs-errors).buildDepError "binary-shared"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32"));
        buildable = true;
        };
      exes = {
        "leksah" = {
          depends = (([
            (hsPkgs."leksah" or ((hsPkgs.pkgs-errors).buildDepError "leksah"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))) ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
              ]
            else [
              (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
              ])) ++ (pkgs.lib).optionals (system.isLinux && flags.loc) [
            (hsPkgs."hgettext" or ((hsPkgs.pkgs-errors).buildDepError "hgettext"))
            (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
            ];
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32"));
          buildable = true;
          };
        "bewleksah" = {
          depends = [
            (hsPkgs."leksah" or ((hsPkgs.pkgs-errors).buildDepError "leksah"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
            (hsPkgs."ghcjs-dom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom"))
            ] ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
              (hsPkgs."gtksourceview3" or ((hsPkgs.pkgs-errors).buildDepError "gtksourceview3"))
              (hsPkgs."webkitgtk3" or ((hsPkgs.pkgs-errors).buildDepError "webkitgtk3"))
              (hsPkgs."webkitgtk3-javascriptcore" or ((hsPkgs.pkgs-errors).buildDepError "webkitgtk3-javascriptcore"))
              ]
            else [
              (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
              (hsPkgs."gtksourceview2" or ((hsPkgs.pkgs-errors).buildDepError "gtksourceview2"))
              (hsPkgs."webkit" or ((hsPkgs.pkgs-errors).buildDepError "webkit"))
              (hsPkgs."webkit-javascriptcore" or ((hsPkgs.pkgs-errors).buildDepError "webkit-javascriptcore"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."leksah" or ((hsPkgs.pkgs-errors).buildDepError "leksah"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ltk" or ((hsPkgs.pkgs-errors).buildDepError "ltk"))
            (hsPkgs."leksah-server" or ((hsPkgs.pkgs-errors).buildDepError "leksah-server"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ] ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
              (hsPkgs."gtksourceview3" or ((hsPkgs.pkgs-errors).buildDepError "gtksourceview3"))
              (hsPkgs."webkitgtk3" or ((hsPkgs.pkgs-errors).buildDepError "webkitgtk3"))
              ]
            else [
              (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
              (hsPkgs."gtksourceview2" or ((hsPkgs.pkgs-errors).buildDepError "gtksourceview2"))
              (hsPkgs."webkit" or ((hsPkgs.pkgs-errors).buildDepError "webkit"))
              ])) ++ (pkgs.lib).optional (flags.yi) (hsPkgs."yi" or ((hsPkgs.pkgs-errors).buildDepError "yi"));
          buildable = true;
          };
        };
      };
    }