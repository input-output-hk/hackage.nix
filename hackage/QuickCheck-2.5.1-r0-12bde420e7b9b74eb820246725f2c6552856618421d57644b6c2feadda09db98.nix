{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base3 = true; base4 = true; templatehaskell = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "QuickCheck"; version = "2.5.1"; };
      license = "BSD-3-Clause";
      copyright = "2000-2012 Koen Claessen, 2006-2008 Björn Bringert, 2009-2012 Nick Smallbone";
      maintainer = "QuickCheck developers <quickcheck@projects.haskell.org>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "http://code.haskell.org/QuickCheck";
      url = "";
      synopsis = "Automatic testing of Haskell programs";
      description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((if flags.base4
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ]
          else if flags.base3
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.7" && (compiler.isGhc && (compiler.version).lt "6.13")) (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9" && (compiler.isGhc && (compiler.version).lt "7.0")) (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))) ++ (pkgs.lib).optionals (compiler.isGhc && true) ((pkgs.lib).optional (flags.templatehaskell && (compiler.isGhc && (compiler.version).ge "6.12")) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell")));
        buildable = true;
        };
      };
    }