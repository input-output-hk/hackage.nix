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
      specVersion = "0";
      identifier = { name = "DocTest"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simon.hengel@web.de";
      author = "Simon Hengel";
      homepage = "http://code.haskell.org/~sih/code/DocTest.git/";
      url = "";
      synopsis = "Test interactive Haskell examples";
      description = "DocTest checks examples in source code comments.\nIt is modeled after doctest for Python\n(<http://docs.python.org/library/doctest.html>).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }