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
      identifier = { name = "glicko"; version = "0.3.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "rasmus@precenth.eu";
      author = "Rasmus Précenth";
      homepage = "";
      url = "";
      synopsis = "Glicko-2 implementation in Haskell.";
      description = "Implementation of the rating algorithm Glicko-2 by Professor Mark E. Glickman\n<http://glicko.net/glicko/glicko2.pdf>\n\nFor more info, see <https://github.com/Prillan/haskell-glicko>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
        ];
        buildable = true;
      };
      tests = {
        "glicko-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."glicko" or (errorHandler.buildDepError "glicko"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }