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
      identifier = { name = "nicify"; version = "0.9"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Pretty print the standard output of show for algebraic datatypes";
      description = "Pretty print the standard output of show for algebraic datatypes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "nicify" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nicify" or (errorHandler.buildDepError "nicify"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }