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
    flags = { test-doctests = true; herbie = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "intervals"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://github.com/ekmett/intervals";
      url = "";
      synopsis = "Interval Arithmetic";
      description = "A 'Numeric.Interval.Interval' is a closed, convex set of floating point values.\n\nWe do not control the rounding mode of the end points of the interval when\nusing floating point arithmetic, so be aware that in order to get precise\ncontainment of the result, you will need to use an underlying type with\nboth lower and upper bounds like 'CReal'";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ pkgs.lib.optional (flags.herbie) (hsPkgs."HerbiePlugin" or (errorHandler.buildDepError "HerbiePlugin"));
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = pkgs.lib.optionals (!!flags.test-doctests) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = if !flags.test-doctests then false else true;
        };
      };
    };
  }