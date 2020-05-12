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
      identifier = { name = "ddc-core-tetra"; version = "0.4.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler intermediate language.";
      description = "Disciplined Disciple Compiler intermediate language\nwith internalized effect judgement.";
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
          (hsPkgs."ddc-core-simpl" or (errorHandler.buildDepError "ddc-core-simpl"))
          ];
        buildable = true;
        };
      };
    }