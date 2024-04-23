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
      identifier = { name = "gamma"; version = "0.10.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus ΑΤ deepbondi dοt net>,\nAlexandre Rodrigues Baldé <alexandrer_b ΑΤ outlook dοt com>";
      author = "James Cook <mokus ΑΤ deepbondi dοt net>";
      homepage = "https://github.com/rockbmb/gamma2";
      url = "";
      synopsis = "Gamma function and related functions.";
      description = "Approximations of the gamma function, incomplete gamma\nfunctions, generalized gamma functions, and factorials.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."continued-fractions" or (errorHandler.buildDepError "continued-fractions"))
          (hsPkgs."converge" or (errorHandler.buildDepError "converge"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "gamma-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
            (hsPkgs."gamma" or (errorHandler.buildDepError "gamma"))
            (hsPkgs."numbers" or (errorHandler.buildDepError "numbers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }