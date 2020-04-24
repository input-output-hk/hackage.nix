{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      base3 = true;
      base4 = true;
      base4point8 = true;
      templatehaskell = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "QuickCheck"; version = "2.8.2"; };
      license = "BSD-3-Clause";
      copyright = "2000-2015 Koen Claessen, 2006-2008 Björn Bringert, 2009-2015 Nick Smallbone";
      maintainer = "QuickCheck developers <quickcheck@projects.haskell.org>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "https://github.com/nick8325/quickcheck";
      url = "";
      synopsis = "Automatic testing of Haskell programs";
      description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.\n\nYou can find a (slightly out-of-date but useful) manual at\n<http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((((([
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ]) ++ (pkgs.lib).optional (flags.base4point8 || flags.base4 || flags.base3) (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.12" && flags.templatehaskell) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.7" && (compiler.isGhc && (compiler.version).lt "6.13")) (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9" && (compiler.isGhc && (compiler.version).lt "7.0")) (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7" && (flags.base4point8 || flags.base4)) (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))) ++ (pkgs.lib).optionals (compiler.isUhc && true) [
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          ];
        buildable = true;
        };
      tests = {
        "test-quickcheck" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            ];
          buildable = if flags.templatehaskell then true else false;
          };
        };
      };
    }