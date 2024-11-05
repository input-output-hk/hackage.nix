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
      specVersion = "3.4";
      identifier = { name = "wreq-effectful"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "nor@acorneroftheweb.com";
      author = "Nor Führ";
      homepage = "";
      url = "";
      synopsis = "Adaptation of the wreq library for the effectful ecosystem.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
        ];
        buildable = true;
      };
      tests = {
        "wreq-effectful-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wreq-effectful" or (errorHandler.buildDepError "wreq-effectful"))
          ];
          buildable = true;
        };
      };
    };
  }