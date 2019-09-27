let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      yi = false;
      dyre = true;
      threaded = false;
      gtk3 = true;
      webkit = true;
      loc = false;
      network-uri = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "leksah"; version = "0.14.0.1"; };
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
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or (buildDepError "regex-tdfa-text"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."ltk" or (buildDepError "ltk"))
          (hsPkgs."binary-shared" or (buildDepError "binary-shared"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."leksah-server" or (buildDepError "leksah-server"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."gio" or (buildDepError "gio"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."executable-path" or (buildDepError "executable-path"))
          (hsPkgs."vcsgui" or (buildDepError "vcsgui"))
          (hsPkgs."vcswrapper" or (buildDepError "vcswrapper"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."hlint" or (buildDepError "hlint"))
          (hsPkgs."vado" or (buildDepError "vado"))
          (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            ])) ++ (pkgs.lib).optionals (system.isOsx) (if flags.gtk3
          then [
            (hsPkgs."gtk3-mac-integration" or (buildDepError "gtk3-mac-integration"))
            ]
          else [
            (hsPkgs."gtk-mac-integration" or (buildDepError "gtk-mac-integration"))
            ])) ++ (pkgs.lib).optional (flags.yi) (hsPkgs."yi" or (buildDepError "yi"))) ++ (pkgs.lib).optional (flags.yi && flags.dyre) (hsPkgs."dyre" or (buildDepError "dyre"))) ++ (if flags.gtk3
          then [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."gtksourceview3" or (buildDepError "gtksourceview3"))
            ]
          else [
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."gtksourceview2" or (buildDepError "gtksourceview2"))
            ])) ++ (pkgs.lib).optionals (flags.webkit) ([
          (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
          (hsPkgs."ghcjs-codemirror" or (buildDepError "ghcjs-codemirror"))
          (hsPkgs."hamlet" or (buildDepError "hamlet"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          ] ++ (if flags.gtk3
          then [
            (hsPkgs."webkitgtk3" or (buildDepError "webkitgtk3"))
            (hsPkgs."webkitgtk3-javascriptcore" or (buildDepError "webkitgtk3-javascriptcore"))
            ]
          else [
            (hsPkgs."webkit" or (buildDepError "webkit"))
            (hsPkgs."webkit-javascriptcore" or (buildDepError "webkit-javascriptcore"))
            ]))) ++ (pkgs.lib).optionals (flags.loc && system.isLinux) [
          (hsPkgs."hgettext" or (buildDepError "hgettext"))
          (hsPkgs."setlocale" or (buildDepError "setlocale"))
          ]) ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (buildDepError "network"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2") (hsPkgs."binary-shared" or (buildDepError "binary-shared"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (sysDepError "kernel32"));
        buildable = true;
        };
      exes = {
        "leksah" = {
          depends = ([
            (hsPkgs."leksah" or (buildDepError "leksah"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"))) ++ (pkgs.lib).optionals (system.isLinux && flags.loc) [
            (hsPkgs."hgettext" or (buildDepError "hgettext"))
            (hsPkgs."setlocale" or (buildDepError "setlocale"))
            ];
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (sysDepError "kernel32"));
          buildable = true;
          };
        "bewleksah" = {
          depends = (pkgs.lib).optionals (!(!flags.webkit)) ([
            (hsPkgs."leksah" or (buildDepError "leksah"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
            (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
            ] ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or (buildDepError "gtk3"))
              (hsPkgs."gtksourceview3" or (buildDepError "gtksourceview3"))
              (hsPkgs."webkitgtk3" or (buildDepError "webkitgtk3"))
              (hsPkgs."webkitgtk3-javascriptcore" or (buildDepError "webkitgtk3-javascriptcore"))
              ]
            else [
              (hsPkgs."gtk" or (buildDepError "gtk"))
              (hsPkgs."gtksourceview2" or (buildDepError "gtksourceview2"))
              (hsPkgs."webkit" or (buildDepError "webkit"))
              (hsPkgs."webkit-javascriptcore" or (buildDepError "webkit-javascriptcore"))
              ]));
          buildable = if !flags.webkit then false else true;
          };
        };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."leksah" or (buildDepError "leksah"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ltk" or (buildDepError "ltk"))
            (hsPkgs."leksah-server" or (buildDepError "leksah-server"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or (buildDepError "gtk3"))
              (hsPkgs."gtksourceview3" or (buildDepError "gtksourceview3"))
              (hsPkgs."webkitgtk3" or (buildDepError "webkitgtk3"))
              ]
            else [
              (hsPkgs."gtk" or (buildDepError "gtk"))
              (hsPkgs."gtksourceview2" or (buildDepError "gtksourceview2"))
              (hsPkgs."webkit" or (buildDepError "webkit"))
              ])) ++ (pkgs.lib).optional (flags.yi) (hsPkgs."yi" or (buildDepError "yi"));
          buildable = true;
          };
        };
      };
    }