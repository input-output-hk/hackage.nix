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
      identifier = { name = "ticker"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 OSANAI Kazuyoshi";
      maintainer = "osmium.k@gmail.com";
      author = "OSANAI Kazuyoshi";
      homepage = "https://github.com/kazeula/ticker-hs";
      url = "";
      synopsis = "A concurrent utility inspired by Ticker in golang";
      description = "A concurrent utility inspired by Ticker in golang";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
        ];
        buildable = true;
      };
      tests = {
        "ticker-hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ticker" or (errorHandler.buildDepError "ticker"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
        "ticker-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          ];
          buildable = true;
        };
      };
    };
  }