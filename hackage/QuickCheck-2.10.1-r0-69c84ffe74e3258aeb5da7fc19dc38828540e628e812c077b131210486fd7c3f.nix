{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { templatehaskell = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "QuickCheck"; version = "2.10.1"; };
      license = "BSD-3-Clause";
      copyright = "2000-2017 Koen Claessen, 2006-2008 Björn Bringert, 2009-2017 Nick Smallbone";
      maintainer = "Nick Smallbone <nick@smallbone.se>; see also QuickCheck mailing list (https://groups.google.com/forum/#!forum/haskell-quickcheck)";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "https://github.com/nick8325/quickcheck";
      url = "";
      synopsis = "Automatic testing of Haskell programs";
      description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in the form of\nproperties which functions should satisfy, and QuickCheck then tests that the\nproperties hold in a large number of randomly generated cases.\n\nSpecifications are expressed in Haskell, using combinators defined in the\nQuickCheck library. QuickCheck provides combinators to define properties,\nobserve the distribution of test data, and define test data generators.\n\nThe <http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html official QuickCheck manual>\nexplains how to write generators and properties;\nit is out-of-date in some details but still full of useful advice.\n\nA user of QuickCheck has written an unofficial, but detailed, tutorial which\nyou can find at\n<https://begriffs.com/posts/2017-01-14-design-use-quickcheck.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && true) [
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && true && flags.templatehaskell) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))) ++ (pkgs.lib).optionals (compiler.isUhc && true) [
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          ];
        buildable = true;
        };
      tests = {
        "test-quickcheck" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = if !flags.templatehaskell then false else true;
          };
        "test-quickcheck-gcoarbitrary" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
          buildable = if !(compiler.isGhc && (compiler.version).ge "7.2")
            then false
            else true;
          };
        "test-quickcheck-generators" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = if !flags.templatehaskell then false else true;
          };
        "test-quickcheck-gshrink" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
          buildable = if !(compiler.isGhc && (compiler.version).ge "7.2")
            then false
            else true;
          };
        };
      };
    }