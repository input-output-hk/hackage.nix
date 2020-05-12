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
      identifier = { name = "dockerfile"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) 2018 Christopher Reichert <creichert07@gmail.com>";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "https://github.com/creichert/dockerfile#readme";
      url = "";
      synopsis = "A Haskell DSL for generating Dockerfiles";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dockerfile" or (errorHandler.buildDepError "dockerfile"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }