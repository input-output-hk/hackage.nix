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
      identifier = { name = "rdioh"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Aditya Bhargava <adit at adit.io>";
      author = "Aditya Bhargava";
      homepage = "";
      url = "";
      synopsis = "A Haskell wrapper for Rdio's API.";
      description = "This library implements methods for Rdio's API.\nIt supports 2-legged and 3-legged OAuth. See Rdio's API for reference: http:\\/\\/developer.rdio.com\\/docs\\/read\\/rest\\/Methods";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."hoauth" or (errorHandler.buildDepError "hoauth"))
          (hsPkgs."urlencoded" or (errorHandler.buildDepError "urlencoded"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "rdioh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."hoauth" or (errorHandler.buildDepError "hoauth"))
            (hsPkgs."urlencoded" or (errorHandler.buildDepError "urlencoded"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "rdioh-spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."rdioh" or (errorHandler.buildDepError "rdioh"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."hoauth" or (errorHandler.buildDepError "hoauth"))
            (hsPkgs."urlencoded" or (errorHandler.buildDepError "urlencoded"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }