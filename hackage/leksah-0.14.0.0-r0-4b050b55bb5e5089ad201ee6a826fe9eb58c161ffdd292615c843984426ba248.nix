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
    flags = {
      yi = false;
      dyre = true;
      threaded = false;
      gtk3 = true;
      webkit = true;
      loc = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "leksah"; version = "0.14.0.0"; };
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
        depends = ((((((([
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or (errorHandler.buildDepError "regex-tdfa-text"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."ltk" or (errorHandler.buildDepError "ltk"))
          (hsPkgs."binary-shared" or (errorHandler.buildDepError "binary-shared"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."leksah-server" or (errorHandler.buildDepError "leksah-server"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."gio" or (errorHandler.buildDepError "gio"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
          (hsPkgs."vcsgui" or (errorHandler.buildDepError "vcsgui"))
          (hsPkgs."vcswrapper" or (errorHandler.buildDepError "vcswrapper"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          (hsPkgs."vado" or (errorHandler.buildDepError "vado"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ])) ++ (pkgs.lib).optionals (system.isOsx) (if flags.gtk3
          then [
            (hsPkgs."gtk3-mac-integration" or (errorHandler.buildDepError "gtk3-mac-integration"))
            ]
          else [
            (hsPkgs."gtk-mac-integration" or (errorHandler.buildDepError "gtk-mac-integration"))
            ])) ++ (pkgs.lib).optional (flags.yi) (hsPkgs."yi" or (errorHandler.buildDepError "yi"))) ++ (pkgs.lib).optional (flags.yi && flags.dyre) (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))) ++ (if flags.gtk3
          then [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."gtksourceview3" or (errorHandler.buildDepError "gtksourceview3"))
            ]
          else [
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."gtksourceview2" or (errorHandler.buildDepError "gtksourceview2"))
            ])) ++ (pkgs.lib).optionals (flags.webkit) ([
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."ghcjs-codemirror" or (errorHandler.buildDepError "ghcjs-codemirror"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          ] ++ (if flags.gtk3
          then [
            (hsPkgs."webkitgtk3" or (errorHandler.buildDepError "webkitgtk3"))
            (hsPkgs."webkitgtk3-javascriptcore" or (errorHandler.buildDepError "webkitgtk3-javascriptcore"))
            ]
          else [
            (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
            (hsPkgs."webkit-javascriptcore" or (errorHandler.buildDepError "webkit-javascriptcore"))
            ]))) ++ (pkgs.lib).optionals (flags.loc && system.isLinux) [
          (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
          (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2") (hsPkgs."binary-shared" or (errorHandler.buildDepError "binary-shared"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
        buildable = true;
        };
      exes = {
        "leksah" = {
          depends = ([
            (hsPkgs."leksah" or (errorHandler.buildDepError "leksah"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))) ++ (pkgs.lib).optionals (system.isLinux && flags.loc) [
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
            ];
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
          buildable = true;
          };
        "bewleksah" = {
          depends = (pkgs.lib).optionals (!(!flags.webkit)) ([
            (hsPkgs."leksah" or (errorHandler.buildDepError "leksah"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
            (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
            ] ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
              (hsPkgs."gtksourceview3" or (errorHandler.buildDepError "gtksourceview3"))
              (hsPkgs."webkitgtk3" or (errorHandler.buildDepError "webkitgtk3"))
              (hsPkgs."webkitgtk3-javascriptcore" or (errorHandler.buildDepError "webkitgtk3-javascriptcore"))
              ]
            else [
              (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
              (hsPkgs."gtksourceview2" or (errorHandler.buildDepError "gtksourceview2"))
              (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
              (hsPkgs."webkit-javascriptcore" or (errorHandler.buildDepError "webkit-javascriptcore"))
              ]));
          buildable = if !flags.webkit then false else true;
          };
        };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."leksah" or (errorHandler.buildDepError "leksah"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ltk" or (errorHandler.buildDepError "ltk"))
            (hsPkgs."leksah-server" or (errorHandler.buildDepError "leksah-server"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            ] ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
              (hsPkgs."gtksourceview3" or (errorHandler.buildDepError "gtksourceview3"))
              (hsPkgs."webkitgtk3" or (errorHandler.buildDepError "webkitgtk3"))
              ]
            else [
              (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
              (hsPkgs."gtksourceview2" or (errorHandler.buildDepError "gtksourceview2"))
              (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
              ])) ++ (pkgs.lib).optional (flags.yi) (hsPkgs."yi" or (errorHandler.buildDepError "yi"));
          buildable = true;
          };
        };
      };
    }