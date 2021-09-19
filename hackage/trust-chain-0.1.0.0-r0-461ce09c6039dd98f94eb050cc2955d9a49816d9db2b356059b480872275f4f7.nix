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
      identifier = { name = "trust-chain"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "sgschlesinger@gmail.com";
      author = "Samuel Schlesinger";
      homepage = "";
      url = "";
      synopsis = "An implementation of a trust chain";
      description = "An implementation of a trust chain.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cropty" or (errorHandler.buildDepError "cropty"))
          (hsPkgs."merge" or (errorHandler.buildDepError "merge"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."trust-chain" or (errorHandler.buildDepError "trust-chain"))
            (hsPkgs."cropty" or (errorHandler.buildDepError "cropty"))
            (hsPkgs."merge" or (errorHandler.buildDepError "merge"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }