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
      identifier = { name = "rest-stringmap"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2014 Silk B.V.";
      maintainer = "code@silk.co";
      author = "Silk B.V.";
      homepage = "";
      url = "";
      synopsis = "Maps with stringy keys that can be transcoded to JSON and XML.";
      description = "Maps with stringy keys that can be transcoded to JSON and XML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."json-schema" or (errorHandler.buildDepError "json-schema"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tostring" or (errorHandler.buildDepError "tostring"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }