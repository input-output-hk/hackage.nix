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
      identifier = { name = "gloss-accelerate"; version = "2.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <trevor.mcdonell@gmail.com>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Extras to interface Gloss and Accelerate";
      description = "Please see the README on GitHub at <https://github.com/tmcdonell/gloss-accelerate#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."gloss-rendering" or (errorHandler.buildDepError "gloss-rendering"))
          (hsPkgs."linear-accelerate" or (errorHandler.buildDepError "linear-accelerate"))
        ];
        buildable = true;
      };
    };
  }