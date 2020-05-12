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
      identifier = { name = "recursion-schemes-ix"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Skye Soss";
      maintainer = "skyler.soss@gmail.com";
      author = "Skye Soss";
      homepage = "https://github.com/Skyb0rg007/recursion-schemes-ix#readme";
      url = "";
      synopsis = "Recursion schemes over indexed Functors";
      description = "Please see the README on GitHub at <https://github.com/Skyb0rg007/recursion-schemes-ix#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."singlethongs" or (errorHandler.buildDepError "singlethongs"))
          ];
        buildable = true;
        };
      tests = {
        "recursion-schemes-ix-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."recursion-schemes-ix" or (errorHandler.buildDepError "recursion-schemes-ix"))
            (hsPkgs."singlethongs" or (errorHandler.buildDepError "singlethongs"))
            ];
          buildable = true;
          };
        };
      };
    }