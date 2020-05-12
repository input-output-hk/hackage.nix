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
      identifier = { name = "structured-mongoDB"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Amit Levy <alevy at stanford dot edu>, Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "HAILS team";
      homepage = "";
      url = "";
      synopsis = "Structured MongoDB interface";
      description = "This module exports a structured type-safe interface to MongoDB.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."compact-string-fix" or (errorHandler.buildDepError "compact-string-fix"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }