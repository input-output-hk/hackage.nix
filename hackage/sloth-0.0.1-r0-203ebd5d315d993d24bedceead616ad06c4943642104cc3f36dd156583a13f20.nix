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
      identifier = { name = "sloth"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan Christiansen <jac@informatik.uni-kiel.de>";
      author = "Jan Christiansen    ";
      homepage = "http://www.informatik.uni-kiel.de/en/computer-aided-program-development/research/sloth/";
      url = "";
      synopsis = "Testing for minimal strictness";
      description = "Sloth is a library for testing whether functions are minmally strict.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }