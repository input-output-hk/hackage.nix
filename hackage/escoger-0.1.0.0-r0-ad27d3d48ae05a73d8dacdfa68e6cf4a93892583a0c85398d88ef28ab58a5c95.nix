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
      specVersion = "2.0";
      identifier = { name = "escoger"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "hello@travisstaton.com";
      author = "Travis Staton";
      homepage = "";
      url = "";
      synopsis = "Terminal fuzzy selector";
      description = "Interactive fuzzy selector for the terminal. Escoger accepts\na newline separated input on stdin, and provides an interactive\nprompt to select one of these lines to output to stdout.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "escoger-lib" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      exes = {
        "escoger" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."escoger-lib" or (buildDepError "escoger-lib"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."escoger-lib" or (buildDepError "escoger-lib"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."escoger-lib" or (buildDepError "escoger-lib"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }