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
      identifier = { name = "agreeing"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 James Cranch";
      maintainer = "j.d.cranch@sheffield.ac.uk";
      author = "James Cranch";
      homepage = "https://github.com/jcranch/agreement#readme";
      url = "";
      synopsis = "Idiomatic data structure for agreement";
      description = "Please see the README on GitHub at <https://github.com/jcranch/agreeing#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "agreeing-test" = {
          depends = [
            (hsPkgs."agreeing" or (errorHandler.buildDepError "agreeing"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }