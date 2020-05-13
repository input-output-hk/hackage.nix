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
    flags = { safe-aeson = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "jsonschema-gen"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Shohei Murayama <shohei.murayama@gmail.com>";
      maintainer = "shohei.murayama@gmail.com";
      author = "Shohei Murayama";
      homepage = "https://github.com/yuga/jsonschema-gen";
      url = "";
      synopsis = "JSON Schema generator from Algebraic data type";
      description = "This library contains a JSON Schema generator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."jsonschema-gen" or (errorHandler.buildDepError "jsonschema-gen"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }