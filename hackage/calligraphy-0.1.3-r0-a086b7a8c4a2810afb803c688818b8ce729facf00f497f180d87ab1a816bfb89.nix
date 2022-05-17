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
      specVersion = "2.4";
      identifier = { name = "calligraphy"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2022 Jonas Carpay";
      maintainer = "Jonas Carpay <jonascarpay@gmail.com>";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/calligraphy#readme";
      url = "";
      synopsis = "HIE-based Haskell call graph and source code visualizer";
      description = "Calligraphy is a Haskell call graph/source code visualizer.\nIt works directly on GHC-generated HIE files, giving us features that would otherwise be tricky, like type information and support for generated files.\nCalligraphy has been tested with all versions of GHC that can produce HIE files (i.e. GHC 8.8, 8.10, 9.0, and 9.2.)\nSee the project's github page for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "calligraphy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."calligraphy" or (errorHandler.buildDepError "calligraphy"))
            ];
          buildable = true;
          };
        };
      tests = {
        "calligraphy-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."calligraphy" or (errorHandler.buildDepError "calligraphy"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }