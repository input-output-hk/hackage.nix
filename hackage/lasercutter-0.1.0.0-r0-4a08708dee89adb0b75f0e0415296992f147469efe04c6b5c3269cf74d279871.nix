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
      identifier = { name = "lasercutter"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/lasercutter#readme";
      url = "";
      synopsis = "A high-powered, single-pass tree parser.";
      description = "Please see the README on GitHub at <https://github.com/isovector/lasercutter#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          ];
        buildable = true;
        };
      tests = {
        "lasercutter-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lasercutter" or (errorHandler.buildDepError "lasercutter"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "lasercutter-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."lasercutter" or (errorHandler.buildDepError "lasercutter"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."scalpel" or (errorHandler.buildDepError "scalpel"))
            (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            ];
          buildable = true;
          };
        };
      };
    }