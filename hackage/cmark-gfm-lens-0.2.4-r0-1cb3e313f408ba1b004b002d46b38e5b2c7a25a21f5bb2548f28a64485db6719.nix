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
      specVersion = "3.8";
      identifier = { name = "cmark-gfm-lens"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ingun37@gmail.com";
      author = "Ingun Jon";
      homepage = "https://github.com/ingun37/cmark-gfm-lens";
      url = "";
      synopsis = "Collection of Lens for cmark-gfm with minimal dependencies";
      description = "Unofficial collection of Lens for cmark-gfm with minimal dependencies";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmark-gfm" or (errorHandler.buildDepError "cmark-gfm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
      tests = {
        "cmark-gfm-lens-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmark-gfm-lens" or (errorHandler.buildDepError "cmark-gfm-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."cmark-gfm" or (errorHandler.buildDepError "cmark-gfm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }