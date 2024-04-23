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
      identifier = { name = "hakyll-ogmarkup"; version = "4.0"; };
      license = "MIT";
      copyright = "2016 Thomas Letan";
      maintainer = "contact@thomasletan.fr";
      author = "Thomas Letan";
      homepage = "https://github.com/ogma-project/hakyll-ogmarkup#readme";
      url = "";
      synopsis = "Integrate ogmarkup document with Hakyll";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."ogmarkup" or (errorHandler.buildDepError "ogmarkup"))
        ];
        buildable = true;
      };
    };
  }