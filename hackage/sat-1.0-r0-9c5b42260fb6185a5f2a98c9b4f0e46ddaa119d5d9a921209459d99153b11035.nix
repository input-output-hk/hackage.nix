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
      specVersion = "1.2";
      identifier = { name = "sat"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "copyleft, share whatever you modify and any derivatives as well, including modules, additions and everything else.";
      maintainer = "andrii.z@gmail.com";
      author = "Zvorygin, Andrii (Loki) ";
      homepage = "http://tcana.info/sat.html";
      url = "http://lokiworld.org/skamSELypla/sat";
      synopsis = "CNF SATisfier";
      description = "CNF(Clausal Normal Form) SATisfiability Solver and Generator";
      buildType = "Custom";
      };
    components = {
      exes = {
        "SATSolve" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "CNFGenerate" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }