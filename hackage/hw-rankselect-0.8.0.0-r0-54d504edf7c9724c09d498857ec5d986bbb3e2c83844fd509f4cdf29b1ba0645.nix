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
      specVersion = "1.22";
      identifier = { name = "hw-rankselect"; version = "0.8.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-rankselect#readme";
      url = "";
      synopsis = "Rank-select";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hw-balancedparens" or (errorHandler.buildDepError "hw-balancedparens"))
          (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
          (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "hw-rankselect-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }