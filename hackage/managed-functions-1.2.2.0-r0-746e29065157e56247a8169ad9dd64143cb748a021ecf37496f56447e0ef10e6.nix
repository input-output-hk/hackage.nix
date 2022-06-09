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
      identifier = { name = "managed-functions"; version = "1.2.2.0"; };
      license = "MIT";
      copyright = "2022 Martin Bednar";
      maintainer = "bednam17@fit.cvut.cz";
      author = "Martin Bednar";
      homepage = "https://github.com/martin-bednar/managed-functions#readme";
      url = "";
      synopsis = "Remote Management Framework";
      description = "Please see the README on GitHub at <https://github.com/martin-bednar/managed-functions#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      tests = {
        "managed-functions-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."managed-functions" or (errorHandler.buildDepError "managed-functions"))
            ];
          buildable = true;
          };
        };
      };
    }