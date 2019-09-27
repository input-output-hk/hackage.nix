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
      tfrandom = true;
      ghcapi = true;
      ghc7 = true;
      readfile = true;
      debug = false;
      networkuri = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "MagicHaskeller"; version = "0.9.6.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Susumu Katayama <skata@cs.miyazaki-u.ac.jp>";
      author = "Susumu Katayama";
      homepage = "http://nautilus.cs.miyazaki-u.ac.jp/~skata/MagicHaskeller.html";
      url = "";
      synopsis = "Automatic inductive functional programmer by systematic search";
      description = "MagicHaskeller is an inductive functional programming system for Haskell.\nThis package contains the MagicHaskeller library, which can be used within GHCi or as an API for inductive program synthesis.\nIt also contains the MagicHaskeller executable that is a standalone synthesis program which can be used interactively or as a backend server,\nand the MagicHaskeller.cgi executable that is a CGI frontend for providing the Web interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."html" or (buildDepError "html"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ] ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or (buildDepError "tf-random"))) ++ (pkgs.lib).optionals (flags.ghcapi && !system.isWindows) [
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          ]) ++ (pkgs.lib).optional (flags.readfile) (hsPkgs."haskell-src" or (buildDepError "haskell-src"))) ++ [
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          ];
        buildable = true;
        };
      exes = {
        "MagicHaskeller" = {
          depends = ([
            (hsPkgs."MagicHaskeller" or (buildDepError "MagicHaskeller"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."monad-par" or (buildDepError "monad-par"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."abstract-par" or (buildDepError "abstract-par"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            ] ++ (pkgs.lib).optionals (!system.isWindows) ((([
            (hsPkgs."unix" or (buildDepError "unix"))
            ] ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or (buildDepError "tf-random"))) ++ (pkgs.lib).optional (flags.readfile) (hsPkgs."haskell-src" or (buildDepError "haskell-src"))) ++ (pkgs.lib).optional (flags.ghc7) (hsPkgs."ghc" or (buildDepError "ghc")))) ++ [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            ];
          buildable = true;
          };
        "MagicHaskeller.cgi" = {
          depends = (([
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."MagicHaskeller" or (buildDepError "MagicHaskeller"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."mueval" or (buildDepError "mueval"))) ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or (buildDepError "tf-random"))) ++ [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            ];
          buildable = true;
          };
        };
      };
    }