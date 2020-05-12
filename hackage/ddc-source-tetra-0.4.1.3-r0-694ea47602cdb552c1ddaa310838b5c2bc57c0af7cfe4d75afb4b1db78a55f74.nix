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
      identifier = { name = "ddc-source-tetra"; version = "0.4.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler source language.";
      description = "Disciplined Disciple Compiler Tetra source language.\nDisciple Tetra is the main source language of DDC.\nThe word Tetra refers to the four base kinds:\n'Data', 'Region', 'Effect' and 'Witness'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ddc-base" or (errorHandler.buildDepError "ddc-base"))
          (hsPkgs."ddc-core" or (errorHandler.buildDepError "ddc-core"))
          (hsPkgs."ddc-core-salt" or (errorHandler.buildDepError "ddc-core-salt"))
          (hsPkgs."ddc-core-tetra" or (errorHandler.buildDepError "ddc-core-tetra"))
          ];
        buildable = true;
        };
      };
    }