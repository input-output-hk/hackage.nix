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
      identifier = { name = "syfco"; version = "1.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Felix Klein <klein@react.uni-saarland.de>";
      author = "Felix Klein <klein@react.uni-saarland.de>";
      homepage = "https://github.com/reactive-systems/syfco";
      url = "";
      synopsis = "Synthesis Format Conversion Tool / Library";
      description = "Library and tool for reading, manipulating and transforming synthesis specifications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
        ];
        buildable = true;
      };
      exes = {
        "syfco" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          ];
          buildable = true;
        };
      };
    };
  }