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
      identifier = { name = "roku-api"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brian@brianmckenna.org";
      author = "Brian McKenna";
      homepage = "";
      url = "";
      synopsis = "Bindings to Roku's External Control API";
      description = "Bindings to Roku's External Control API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."xml-extractors" or (errorHandler.buildDepError "xml-extractors"))
          ];
        buildable = true;
        };
      };
    }