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
      identifier = { name = "doctest"; version = "0.3.0"; };
      license = "MIT";
      copyright = "(c) 2009-2011 Simon Hengel";
      maintainer = "simon.hengel@wiktory.org";
      author = "Simon Hengel";
      homepage = "http://haskell.org/haskellwiki/DocTest";
      url = "";
      synopsis = "Test interactive Haskell examples";
      description = "The doctest program checks examples in source code comments.\nIt is modeled after doctest for Python\n(<http://docs.python.org/library/doctest.html>).\n\nDocumentation is at <http://haskell.org/haskellwiki/DocTest>.";
      buildType = "Simple";
      };
    components = {
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