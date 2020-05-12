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
      identifier = { name = "hw-balancedparens"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-balancedparens#readme";
      url = "";
      synopsis = "Balanced parentheses";
      description = "Balanced parentheses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
          (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hw-excess" or (errorHandler.buildDepError "hw-excess"))
          (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
          ];
        buildable = true;
        };
      tests = {
        "hw-balancedparens-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-balancedparens" or (errorHandler.buildDepError "hw-balancedparens"))
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."hw-balancedparens" or (errorHandler.buildDepError "hw-balancedparens"))
            ];
          buildable = true;
          };
        };
      };
    }