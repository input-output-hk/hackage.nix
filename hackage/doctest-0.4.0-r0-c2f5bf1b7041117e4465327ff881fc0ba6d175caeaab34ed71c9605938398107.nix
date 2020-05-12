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
      specVersion = "1.6";
      identifier = { name = "doctest"; version = "0.4.0"; };
      license = "MIT";
      copyright = "(c) 2009-2011 Simon Hengel";
      maintainer = "simon.hengel@wiktory.org";
      author = "Simon Hengel";
      homepage = "https://github.com/sol/doctest-haskell#readme";
      url = "";
      synopsis = "Test interactive Haskell examples";
      description = "The doctest program checks examples in source code comments.\nIt is modeled after doctest for Python\n(<http://docs.python.org/library/doctest.html>).\n\nDocumentation is at <https://github.com/sol/doctest-haskell#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }