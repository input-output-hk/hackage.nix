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
      identifier = { name = "CarneadesIntoDung"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Bas van Gijzel";
      maintainer = "Bas van Gijzel <bmv@cs.nott.ac.uk>";
      author = "Bas van Gijzel, Henrik Nilsson";
      homepage = "http://www.cs.nott.ac.uk/~bmv/CarneadesIntoDung/";
      url = "";
      synopsis = "A translation from the Carneades argumentation model into Dung's AFs.";
      description = "A translation from the Carneades argumentation model\n(<http://hackage.haskell.org/package/CarneadesDSL>) into Dung's\nargumentation frameworks (<http://hackage.haskell.org/package/Dung>).\nThis package provides a translation function and correspondence\nproperties. For the papers accompanying this library see\n\\\"Towards a framework for the implementation and verification of\ntranslations between argumentation models\\\" and \\\"A principled\napproach to the implementation of argumentation models\\\",\navailable at <http://www.cs.nott.ac.uk/~bmv/CarneadesIntoDung/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."CarneadesDSL" or (errorHandler.buildDepError "CarneadesDSL"))
          (hsPkgs."Dung" or (errorHandler.buildDepError "Dung"))
        ];
        buildable = true;
      };
      exes = { "caell" = { buildable = true; }; };
    };
  }