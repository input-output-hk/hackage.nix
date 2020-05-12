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
      identifier = { name = "apecs-gloss"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs-physics#readme";
      url = "";
      synopsis = "Simple gloss renderer for apecs";
      description = "Simple 2D gloss-based rendering for apecs.\nIntended for prototyping.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."apecs" or (errorHandler.buildDepError "apecs"))
          (hsPkgs."apecs-physics" or (errorHandler.buildDepError "apecs-physics"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
        buildable = true;
        };
      };
    }