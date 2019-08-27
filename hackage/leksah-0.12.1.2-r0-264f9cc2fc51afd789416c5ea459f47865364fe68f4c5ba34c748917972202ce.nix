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
    flags = { yi = false; dyre = true; threaded = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "leksah"; version = "0.12.1.2"; };
      license = "LicenseRef-GPL";
      copyright = "2007-2011 Juergen Nicklisch-Franken, Hamish Mackenzie";
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
        depends = ((([
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."gtksourceview2" or (buildDepError "gtksourceview2"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."ltk" or (buildDepError "ltk"))
          (hsPkgs."binary-shared" or (buildDepError "binary-shared"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."leksah-server" or (buildDepError "leksah-server"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."enumerator" or (buildDepError "enumerator"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."gio" or (buildDepError "gio"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."gtk-mac-integration" or (buildDepError "gtk-mac-integration"))) ++ (pkgs.lib).optional (flags.yi) (hsPkgs."yi" or (buildDepError "yi"))) ++ (pkgs.lib).optional (flags.yi && flags.dyre) (hsPkgs."dyre" or (buildDepError "dyre"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (sysDepError "kernel32"));
        };
      exes = {
        "leksah" = {
          depends = ((((if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (buildDepError "unix"))
              ]) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."gtk-mac-integration" or (buildDepError "gtk-mac-integration"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.0" && flags.yi) (hsPkgs."yi" or (buildDepError "yi"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.0" && flags.yi && flags.dyre) (hsPkgs."dyre" or (buildDepError "dyre"))) ++ (if compiler.isGhc && (compiler.version).lt "7.0"
            then [
              (hsPkgs."Cabal" or (buildDepError "Cabal"))
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."binary" or (buildDepError "binary"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."glib" or (buildDepError "glib"))
              (hsPkgs."gtk" or (buildDepError "gtk"))
              (hsPkgs."gtksourceview2" or (buildDepError "gtksourceview2"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              (hsPkgs."parsec" or (buildDepError "parsec"))
              (hsPkgs."pretty" or (buildDepError "pretty"))
              (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
              (hsPkgs."regex-base" or (buildDepError "regex-base"))
              (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."ltk" or (buildDepError "ltk"))
              (hsPkgs."binary-shared" or (buildDepError "binary-shared"))
              (hsPkgs."deepseq" or (buildDepError "deepseq"))
              (hsPkgs."hslogger" or (buildDepError "hslogger"))
              (hsPkgs."leksah-server" or (buildDepError "leksah-server"))
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."ghc" or (buildDepError "ghc"))
              (hsPkgs."strict" or (buildDepError "strict"))
              (hsPkgs."enumerator" or (buildDepError "enumerator"))
              (hsPkgs."text" or (buildDepError "text"))
              (hsPkgs."gio" or (buildDepError "gio"))
              (hsPkgs."transformers" or (buildDepError "transformers"))
              (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
              ]
            else [
              (hsPkgs."leksah" or (buildDepError "leksah"))
              (hsPkgs."base" or (buildDepError "base"))
              ]);
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (sysDepError "kernel32"));
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."leksah" or (buildDepError "leksah"))
            ];
          };
        };
      };
    }