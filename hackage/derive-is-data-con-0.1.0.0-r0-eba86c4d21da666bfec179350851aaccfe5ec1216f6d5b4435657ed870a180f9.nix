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
      specVersion = "2.2";
      identifier = { name = "derive-is-data-con"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Zhang Song";
      maintainer = "Haskell.Zhang.Song `at` hotmail.com";
      author = "Zhang Song";
      homepage = "https://github.com/HaskellZhangSong/derive-is-data-con#readme";
      url = "";
      synopsis = "This package generates data constructor predicate functions";
      description = "Please see the README on GitHub at <https://github.com/HaskellZhangSong/derive-is-data-con#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "derive-is-data-con-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."derive-is-data-con" or (errorHandler.buildDepError "derive-is-data-con"))
          ];
          buildable = true;
        };
      };
    };
  }