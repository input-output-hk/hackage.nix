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
      identifier = { name = "verifiable-expressions"; version = "0.4.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "bch29@cam.ac.uk";
      author = "Bradley Hardy";
      homepage = "";
      url = "";
      synopsis = "An intermediate language for Hoare logic style verification.";
      description = "A typed intermediate language for Hoare logic style verification. It defines the intermediate language and combinators to interact it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."union" or (errorHandler.buildDepError "union"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
        ];
        buildable = true;
      };
    };
  }