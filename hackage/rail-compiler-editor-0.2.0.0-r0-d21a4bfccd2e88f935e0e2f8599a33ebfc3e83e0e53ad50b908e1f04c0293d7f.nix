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
      specVersion = "1.10";
      identifier = { name = "rail-compiler-editor"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "borgers@mi.fu-berlin.de";
      author = "see AUTHORS";
      homepage = "https://github.com/SWP-Ubau-SoSe2014-Haskell/SWPSoSe14";
      url = "";
      synopsis = "Compiler and editor for the esolang rail.";
      description = "A compiler and a graphical editor for the esoteric programming language rail.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "RailCompiler" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
            (hsPkgs."llvm-general" or (buildDepError "llvm-general"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "RailEditor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
            (hsPkgs."llvm-general" or (buildDepError "llvm-general"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      tests = {
        "testcases" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
            (hsPkgs."llvm-general" or (buildDepError "llvm-general"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }