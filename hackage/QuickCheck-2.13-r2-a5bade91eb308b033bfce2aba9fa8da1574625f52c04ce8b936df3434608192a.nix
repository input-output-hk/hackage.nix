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
    flags = { templatehaskell = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "QuickCheck"; version = "2.13"; };
      license = "BSD-3-Clause";
      copyright = "2000-2019 Koen Claessen, 2006-2008 Björn Bringert, 2009-2019 Nick Smallbone";
      maintainer = "Nick Smallbone <nick@smallbone.se>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "https://github.com/nick8325/quickcheck";
      url = "";
      synopsis = "Automatic testing of Haskell programs";
      description = "QuickCheck is a library for random testing of program properties.\nThe programmer provides a specification of the program, in the form of\nproperties which functions should satisfy, and QuickCheck then tests that the\nproperties hold in a large number of randomly generated cases.\nSpecifications are expressed in Haskell, using combinators provided by\nQuickCheck. QuickCheck provides combinators to define properties, observe the\ndistribution of test data, and define test data generators.\n\nMost of QuickCheck's functionality is exported by the main \"Test.QuickCheck\"\nmodule. The main exception is the monadic property testing library in\n\"Test.QuickCheck.Monadic\".\n\nIf you are new to QuickCheck, you can try looking at the following resources:\n\n* The <http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html official QuickCheck manual>.\nIt's a bit out-of-date in some details and doesn't cover newer QuickCheck features,\nbut is still full of good advice.\n* <https://begriffs.com/posts/2017-01-14-design-use-quickcheck.html>,\na detailed tutorial written by a user of QuickCheck.\n\nThe <https://hackage.haskell.org/package/quickcheck-instances quickcheck-instances>\ncompanion package provides instances for types in Haskell Platform packages\nat the cost of additional dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && true) [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && true && flags.templatehaskell) (hsPkgs."template-haskell" or (buildDepError "template-haskell"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.0") (hsPkgs."splitmix" or (buildDepError "splitmix"))) ++ (pkgs.lib).optionals (compiler.isUhc && true) [
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          ];
        buildable = true;
        };
      tests = {
        "test-quickcheck" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = if !flags.templatehaskell then false else true;
          };
        "test-quickcheck-gcoarbitrary" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
          buildable = if !flags.templatehaskell || !(compiler.isGhc && (compiler.version).ge "7.2")
            then false
            else true;
          };
        "test-quickcheck-generators" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = if !flags.templatehaskell then false else true;
          };
        "test-quickcheck-gshrink" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
          buildable = if !flags.templatehaskell || !(compiler.isGhc && (compiler.version).ge "7.2")
            then false
            else true;
          };
        "test-quickcheck-terminal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = if !flags.templatehaskell || !(compiler.isGhc && (compiler.version).ge "7.10")
            then false
            else true;
          };
        "test-quickcheck-monadfix" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = if !flags.templatehaskell || !(compiler.isGhc && (compiler.version).ge "7.10")
            then false
            else true;
          };
        "test-quickcheck-split" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }