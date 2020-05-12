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
      identifier = { name = "aeson-attoparsec"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/aeson-attoparsec#readme";
      url = "";
      synopsis = "Embed an Attoparsec text parser into an Aeson parser";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      tests = {
        "aeson-attoparsec-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson-attoparsec" or (errorHandler.buildDepError "aeson-attoparsec"))
            ];
          buildable = true;
          };
        };
      };
    }