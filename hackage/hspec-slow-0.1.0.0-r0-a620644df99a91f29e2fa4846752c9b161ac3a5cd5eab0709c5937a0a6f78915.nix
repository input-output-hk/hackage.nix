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
      identifier = { name = "hspec-slow"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Bob Long";
      maintainer = "robertjflong@gmail.com";
      author = "Bob Long";
      homepage = "https://github.com/bobjflong/hspec-slow#readme";
      url = "";
      synopsis = "Find slow test cases";
      description = "Records and prints out slow Hspec tests";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
        buildable = true;
        };
      tests = {
        "hspec-slow-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec-slow" or (errorHandler.buildDepError "hspec-slow"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }