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
      specVersion = "1.12";
      identifier = { name = "pure-shuffle"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "yuji-yamamoto@iij.ad.jp";
      author = "Yuji Yamamoto";
      homepage = "https://gitlab.com/igrep/pure-shuffle#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitLab at <https://gitlab.com/igrep/pure-shuffle#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          ];
        buildable = true;
        };
      tests = {
        "pure-shuffle-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."pure-shuffle" or (errorHandler.buildDepError "pure-shuffle"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            ];
          buildable = true;
          };
        };
      };
    }