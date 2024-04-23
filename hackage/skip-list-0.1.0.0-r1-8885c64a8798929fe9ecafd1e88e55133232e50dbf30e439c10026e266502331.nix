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
      identifier = { name = "skip-list"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Gregory Malecha";
      maintainer = "gmalecha@gmail.com";
      author = "Gregory Malecha";
      homepage = "https://github.com/gmalecha/skip-list#readme";
      url = "";
      synopsis = "An implementation of pure skip lists";
      description = "Skip lists provide efficient amortized indexing deep into lists by building an index that, essentially, converts the list into a balance binary tree. See <https://en.wikipedia.org/wiki/Skip_list the wikipedia entry on skip lists> for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "skip-list-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."skip-list" or (errorHandler.buildDepError "skip-list"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-foo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."skip-list" or (errorHandler.buildDepError "skip-list"))
          ];
          buildable = true;
        };
      };
    };
  }