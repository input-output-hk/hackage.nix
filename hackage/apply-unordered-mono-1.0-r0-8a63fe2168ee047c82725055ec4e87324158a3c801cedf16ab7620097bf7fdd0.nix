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
      identifier = { name = "apply-unordered-mono"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Michael Sloan";
      maintainer = "mgsloan@gmail.com";
      author = "Michael Sloan";
      homepage = "https://github.com/mgsloan/apply-unordered#readme";
      url = "";
      synopsis = "Apply functions to arguments in an unordered type-directed fashion";
      description = "Please see the README on GitHub at <https://github.com/mgsloan/apply-unordered#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "apply-unordered-test" = {
          depends = [
            (hsPkgs."apply-unordered-mono" or (errorHandler.buildDepError "apply-unordered-mono"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
          ];
          buildable = true;
        };
      };
    };
  }