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
      specVersion = "3.0";
      identifier = { name = "hs-highlight"; version = "1.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "lorenzobattistela@gmail.com";
      author = "Lorenzobattistela";
      homepage = "https://github.com/Lorenzobattistela/hs-highlight";
      url = "";
      synopsis = "A tool to highlight terminal strings";
      description = "highlight is a Haskell library that provides functionality to highlight anything in code snippets. It aims to improve readability and debugging by visually emphasizing problematic areas in source code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "test-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-highlight" or (errorHandler.buildDepError "hs-highlight"))
          ];
          buildable = true;
        };
      };
      tests = {
        "highlight-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-highlight" or (errorHandler.buildDepError "hs-highlight"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }