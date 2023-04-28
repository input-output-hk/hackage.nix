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
      identifier = { name = "wai-problem-details"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Alexander Goussas 2023";
      maintainer = "goussasalexander@gmail.com";
      author = "Alexander Goussas";
      homepage = "https://github.com/aloussase/wai-problem-details";
      url = "";
      synopsis = "Problem details middleware for WAI";
      description = "Problem details middleware for WAI.\n\nIt exposes a functions to throw exceptions of type\nProblemDetailsException that implements the problem details\nRFC as specified in https://www.rfc-editor.org/rfc/rfc7807.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deriving-aeson" or (errorHandler.buildDepError "deriving-aeson"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
        buildable = true;
        };
      tests = {
        "wai-problem-details-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wai-problem-details" or (errorHandler.buildDepError "wai-problem-details"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hspec-wai-json" or (errorHandler.buildDepError "hspec-wai-json"))
            ];
          buildable = true;
          };
        };
      };
    }