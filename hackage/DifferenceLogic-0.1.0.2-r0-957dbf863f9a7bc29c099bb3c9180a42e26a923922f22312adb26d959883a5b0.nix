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
      specVersion = "1.8";
      identifier = { name = "DifferenceLogic"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dillonhuff@gmail.com";
      author = "Dillon Huff";
      homepage = "https://github.com/dillonhuff/DifferenceLogic";
      url = "";
      synopsis = "A theory solver for conjunctions of literals in difference logic";
      description = "This package contains a theory solver for conjunctions of literals\nin difference logic. The logic supports predicates:\n>\n<\n>=\n<=\n=\nIt does not currently support disequality";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."FirstOrderTheory" or (errorHandler.buildDepError "FirstOrderTheory"))
        ];
        buildable = true;
      };
    };
  }