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
      identifier = { name = "fields-json"; version = "0.2.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mariusz@scrive.com";
      author = "Scrive";
      homepage = "";
      url = "";
      synopsis = "Abusing monadic syntax JSON objects generation.";
      description = "Generation of big, complex JSON objects with 'Text.JSON' is painful.\nAnd autoderivation is not always posible.\nCheck documentation of 'Text.JSON.Gen' for more info.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }