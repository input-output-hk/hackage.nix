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
    flags = { sample = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "quickcheck-higherorder"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/quickcheck-higherorder#readme";
      url = "";
      synopsis = "QuickCheck extension for higher-order properties";
      description = "Enhancements for property-based testing of higher-order properties.\n\n* Associate types to their representations with the\n'Test.QuickCheck.HigherOrder.Constructible' class.\n* 'Test.QuickCheck.HigherOrder.Testable'' class,\nvariant of 'Test.QuickCheck.Testable' with an improved instance for @(->)@.\n* Representation of higher-order functions (via test-fun).\n* Testable equality 'Test.QuickCheck.HigherOrder.TestEq'.\n* Explicit testable type of 'Test.QuickCheck.HigherOrder.Equation'.\n\nSee also README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."test-fun" or (buildDepError "test-fun"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "qcho-test" = {
          depends = [
            (hsPkgs."quickcheck-higherorder" or (buildDepError "quickcheck-higherorder"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "qcho-sample" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-higherorder" or (buildDepError "quickcheck-higherorder"))
            (hsPkgs."test-fun" or (buildDepError "test-fun"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if !flags.sample then false else true;
          };
        };
      };
    }