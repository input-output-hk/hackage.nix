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
      identifier = { name = "aeson-t"; version = "0.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Nelson <cred+github@begriffs.com>";
      author = "Joe Nelson <cred+github@begriffs.com>";
      homepage = "https://github.com/begriffs/aeson-t";
      url = "";
      synopsis = "Transform JSON";
      description = "Provides a succinct DSL to transform one JSON document to another.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson-t" or (errorHandler.buildDepError "aeson-t"))
            (hsPkgs."hspec2" or (errorHandler.buildDepError "hspec2"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."aeson-qq" or (errorHandler.buildDepError "aeson-qq"))
            ];
          buildable = true;
          };
        };
      };
    }