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
      identifier = { name = "Hungarian-Munkres"; version = "0.1.3"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014 Kai Zhang";
      maintainer = "Kai Zhang <kai@kzhang.org>";
      author = "Kai Zhang <kai@kzhang.org>";
      homepage = "";
      url = "";
      synopsis = "A Linear Sum Assignment Problem (LSAP) solver";
      description = "This library provide a Haskell binding to the libhungarian,\na solver for Linear Sum Assignment Problem (LSAP) implemented\nin C language. It uses Hungarian algorithm\n<http://en.wikipedia.org/wiki/Hungarian_algorithm>, and runs\nin O(n^3) time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."Hungarian-Munkres" or (errorHandler.buildDepError "Hungarian-Munkres"))
            (hsPkgs."Munkres" or (errorHandler.buildDepError "Munkres"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }