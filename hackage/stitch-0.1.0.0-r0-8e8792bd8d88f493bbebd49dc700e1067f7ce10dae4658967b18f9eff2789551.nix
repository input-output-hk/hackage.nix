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
      identifier = { name = "stitch"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© Fraser Murray 2015";
      maintainer = "fraser.m.murray@gmail.com";
      author = "Fraser Murray";
      homepage = "";
      url = "";
      synopsis = "lightweight CSS DSL";
      description = "a tiny css preprocessor dsl for haskell – check out the readme at <https://github.com/intolerable/stitch>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }