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
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          (hsPkgs."haskell-gi-base" or (buildDepError "haskell-gi-base"))
          (hsPkgs."gi-glib" or (buildDepError "gi-glib"))
          (hsPkgs."gi-gobject" or (buildDepError "gi-gobject"))
          (hsPkgs."gi-gio" or (buildDepError "gi-gio"))
          (hsPkgs."gi-cairo" or (buildDepError "gi-cairo"))
          (hsPkgs."gi-gdk" or (buildDepError "gi-gdk"))
          (hsPkgs."gi-gdkpixbuf" or (buildDepError "gi-gdkpixbuf"))
          (hsPkgs."gi-gtk" or (buildDepError "gi-gtk"))
          (hsPkgs."gi-pango" or (buildDepError "gi-pango"))
          (hsPkgs."gi-gtksource" or (buildDepError "gi-gtksource"))
          (hsPkgs."gi-gtk-hs" or (buildDepError "gi-gtk-hs"))
          (hsPkgs."ghcjs-codemirror" or (buildDepError "ghcjs-codemirror"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
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
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."executable-path" or (buildDepError "executable-path"))
          (hsPkgs."vcsgui" or (buildDepError "vcsgui"))
          (hsPkgs."vcswrapper" or (buildDepError "vcswrapper"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."hlint" or (buildDepError "hlint"))
          (hsPkgs."vado" or (buildDepError "vado"))
          (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
          (hsPkgs."cpphs" or (buildDepError "cpphs"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."haskell-gi-overloading" or (buildDepError "haskell-gi-overloading"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."gi-gtkosxapplication" or (buildDepError "gi-gtkosxapplication"))) ++ (if flags.webkit2 && !system.isWindows
          then [ (hsPkgs."gi-webkit2" or (buildDepError "gi-webkit2")) ]
          else [
            (hsPkgs."gi-webkit" or (buildDepError "gi-webkit"))
            ])) ++ (pkgs.lib).optionals (flags.yi) [
          (hsPkgs."yi" or (buildDepError "yi"))
          (hsPkgs."yi-language" or (buildDepError "yi-language"))
          (hsPkgs."yi-rope" or (buildDepError "yi-rope"))
          ]) ++ (pkgs.lib).optional (flags.yi && flags.dyre) (hsPkgs."dyre" or (buildDepError "dyre"))) ++ (pkgs.lib).optionals (flags.codemirror) [
          (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ]) ++ (pkgs.lib).optionals (flags.loc && system.isLinux) [
          (hsPkgs."hgettext" or (buildDepError "hgettext"))
          (hsPkgs."setlocale" or (buildDepError "setlocale"))
          ]) ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (buildDepError "network"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2") (hsPkgs."binary-shared" or (buildDepError "binary-shared"))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."leksah-server" or (buildDepError "leksah-server"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (sysDepError "kernel32"));
        pkgconfig = (pkgs.lib).optional (flags.gtk-318) (pkgconfPkgs."gtk+-3.0" or (pkgConfDepError "gtk+-3.0")) ++ (pkgs.lib).optional (flags.gtk-320) (pkgconfPkgs."gtk+-3.0" or (pkgConfDepError "gtk+-3.0"));
        };
      exes = {
        "leksah" = {
          depends = (([
            (hsPkgs."leksah" or (buildDepError "leksah"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gi-gtk-hs" or (buildDepError "gi-gtk-hs"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"))) ++ (pkgs.lib).optionals (system.isLinux && flags.loc) [
            (hsPkgs."hgettext" or (buildDepError "hgettext"))
            (hsPkgs."setlocale" or (buildDepError "setlocale"))
            ]) ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."leksah-server" or (buildDepError "leksah-server"));
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (sysDepError "kernel32"));
          };
        };
      };
    }