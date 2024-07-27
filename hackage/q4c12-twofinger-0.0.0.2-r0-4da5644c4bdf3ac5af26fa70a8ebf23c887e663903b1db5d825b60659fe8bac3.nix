{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "q4c12-twofinger"; version = "0.0.0.2"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "quasicomputational <quasicomputational@gmail.com>";
      author = "quasicomputational <quasicomputational@gmail.com>";
      homepage = "https://github.com/quasicomputational/mega/tree/master/packages/twofinger";
      url = "";
      synopsis = "Efficient alternating finger trees";
      description = "This package provides efficient alternating sequences based on finger trees. These can represent sequences made up of two types of element, @e@ and @a@  where two of the same type of element cannot follow each other directly.\n\nFour different flavours are provided, isomorphic to @([(a, e)], a)@, @([(e, a)], e)@, @[(a, e)]@, and @[(e, a)]@.\n\nCons-like operations are /O(1)/ amortised, and append operations are /O(log(min(n, m)))/ amortised.\n\nFor more details, please see the Haddock documentation of \"Q4C12.TwoFinger\".";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."streams" or (errorHandler.buildDepError "streams"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.2") (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"));
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."q4c12-twofinger" or (errorHandler.buildDepError "q4c12-twofinger"))
            (hsPkgs."streams" or (errorHandler.buildDepError "streams"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }