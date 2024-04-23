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
      specVersion = "1.0";
      identifier = { name = "urlcheck"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@cse.unsw.edu.au>";
      author = "Don Stewart ";
      homepage = "http://www.cse.unsw.edu.au/~dons/urlcheck.html";
      url = "";
      synopsis = "Parallel link checker";
      description = "A (SMP) parallel link checker.\nChecks the validity of embedded urls in the input files.\nUsage: urlcheck foo.html";
      buildType = "Custom";
    };
    components = {
      exes = {
        "urlcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = true;
        };
      };
    };
  }