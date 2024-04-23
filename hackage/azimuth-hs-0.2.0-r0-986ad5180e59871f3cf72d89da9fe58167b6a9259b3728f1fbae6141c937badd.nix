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
      specVersion = "2.4";
      identifier = { name = "azimuth-hs"; version = "0.2.0"; };
      license = "MPL-2.0";
      copyright = "2020 Brendan Hay";
      maintainer = "jared@jtobin.io";
      author = "Brendan Hay,\nJared Tobin";
      homepage = "https://github.com/urbit/azimuth-hs";
      url = "";
      synopsis = "Interact with Azimuth from Haskell";
      description = "Haskell bindings for Azimuth (https://github.com/urbit/azimuth)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."haskoin-core" or (errorHandler.buildDepError "haskoin-core"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."urbit-hob" or (errorHandler.buildDepError "urbit-hob"))
          (hsPkgs."web3" or (errorHandler.buildDepError "web3"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."azimuth-hs" or (errorHandler.buildDepError "azimuth-hs"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."urbit-hob" or (errorHandler.buildDepError "urbit-hob"))
          ];
          buildable = true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."azimuth-hs" or (errorHandler.buildDepError "azimuth-hs"))
            (hsPkgs."urbit-hob" or (errorHandler.buildDepError "urbit-hob"))
          ];
          buildable = true;
        };
      };
    };
  }