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
      specVersion = "1.6";
      identifier = { name = "cqrs-example"; version = "0.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "spam@scientician.net";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Example for cqrs package";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cqrs-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cqrs" or (errorHandler.buildDepError "cqrs"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }