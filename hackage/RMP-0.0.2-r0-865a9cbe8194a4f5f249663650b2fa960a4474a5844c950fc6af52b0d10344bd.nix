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
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "RMP"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noam Lewis <jones.noamle@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Binding to code that controls a Segway RMP";
      description = "This library provides an interface to a USB-connected Segway RMP.\n\nIt is based on code and information from <http://www.ai.sri.com/~vincent/segway.php>,\nand was tested on a Segway RMP 200.\n\nWARNING: The Segway RMP is a dangerous (and massive) device, use this library with care.\nThe library comes without warranty, and you may find the Segway running loose, harming people.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."allocated-processor" or (buildDepError "allocated-processor"))
          ];
        libs = [
          (pkgs."canlib" or (sysDepError "canlib"))
          (pkgs."ftd2xx" or (sysDepError "ftd2xx"))
          (pkgs."stdc++" or (sysDepError "stdc++"))
          ];
        };
      exes = {
        "rmp-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."allocated-processor" or (buildDepError "allocated-processor"))
            ];
          libs = [
            (pkgs."canlib" or (sysDepError "canlib"))
            (pkgs."ftd2xx" or (sysDepError "ftd2xx"))
            (pkgs."stdc++" or (sysDepError "stdc++"))
            ];
          };
        "rmp-test-facedetect" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."allocated-processor" or (buildDepError "allocated-processor"))
            (hsPkgs."cv-combinators" or (buildDepError "cv-combinators"))
            (hsPkgs."HOpenCV" or (buildDepError "HOpenCV"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            ];
          libs = [
            (pkgs."canlib" or (sysDepError "canlib"))
            (pkgs."ftd2xx" or (sysDepError "ftd2xx"))
            (pkgs."stdc++" or (sysDepError "stdc++"))
            ];
          };
        };
      };
    }