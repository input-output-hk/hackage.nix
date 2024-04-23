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
      identifier = { name = "reprinter"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "d.a.orchard@kent.ac.uk";
      author = "Dominic Orchard, Harry Clarke";
      homepage = "https://github.com/camfort/reprinter#readme";
      url = "";
      synopsis = "Scrap Your Reprinter";
      description = "A datatype generic algorithm for layout-preserving refactoring";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syz" or (errorHandler.buildDepError "syz"))
        ];
        buildable = true;
      };
    };
  }