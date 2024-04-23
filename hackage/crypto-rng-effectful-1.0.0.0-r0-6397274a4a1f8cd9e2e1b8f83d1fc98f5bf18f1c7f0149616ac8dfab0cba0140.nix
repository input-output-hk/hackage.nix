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
      identifier = { name = "crypto-rng-effectful"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrzej@rybczak.net";
      author = "Andrzej Rybczak, Dominik Peteler, Hécate Moonlight";
      homepage = "";
      url = "";
      synopsis = "Adaptation of the crypto-rng library for the effectful ecosystem.";
      description = "Adaptation of the @<https://hackage.haskell.org/package/crypto-rng crypto-rng>@ library for the @<https://hackage.haskell.org/package/effectful effectful>@ ecosystem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypto-rng" or (errorHandler.buildDepError "crypto-rng"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-rng" or (errorHandler.buildDepError "crypto-rng"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."crypto-rng-effectful" or (errorHandler.buildDepError "crypto-rng-effectful"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }