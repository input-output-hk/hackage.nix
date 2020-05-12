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
      specVersion = "1.8";
      identifier = { name = "ipopt-hs"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "haskell binding to ipopt including automatic differentiation";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          ];
        pkgconfig = [
          (pkgconfPkgs."ipopt" or (errorHandler.pkgConfDepError "ipopt"))
          ];
        buildable = true;
        };
      exes = {
        "ipopt-hs_Test1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ipopt-hs" or (errorHandler.buildDepError "ipopt-hs"))
            ];
          buildable = true;
          };
        "ipopt-hs_Test2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ipopt-hs" or (errorHandler.buildDepError "ipopt-hs"))
            ];
          buildable = true;
          };
        };
      };
    }