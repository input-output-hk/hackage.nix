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
      specVersion = "1.2";
      identifier = { name = "haskoon-httpspec"; version = "0.5.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "David Leuschner <leuschner@factisresearch.com>, Dirk Spoeri <spoeri@factisresearch.com>, Stefan Wehr <wehr@factisresearch.com>";
      author = "David Leuschner <leuschner@factisresearch.com>, Dirk Spoeri <spoeri@factisresearch.com>, Stefan Wehr <wehr@factisresearch.com>";
      homepage = "";
      url = "";
      synopsis = "Integrating HttpSpec with Haskoon";
      description = "Allows to send and receive Http requests using the\nHttpSpec specifications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."haskoon" or (errorHandler.buildDepError "haskoon"))
          (hsPkgs."bidispec" or (errorHandler.buildDepError "bidispec"))
          (hsPkgs."httpspec" or (errorHandler.buildDepError "httpspec"))
          ];
        buildable = true;
        };
      };
    }