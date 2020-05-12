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
      identifier = { name = "CarneadesIntoDung"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Bas van Gijzel";
      maintainer = "Bas van Gijzel <bmv@cs.nott.ac.uk>";
      author = "Bas van Gijzel, Henrik Nilsson";
      homepage = "http://www.cs.nott.ac.uk/~bmv/CarneadesIntoDung/";
      url = "";
      synopsis = "A translation from the Carneades argumentation model into Dung's AFs.";
      description = "A translation from the Carneades argumentation model\n(http://hackage.haskell.org/package/CarneadesDSL) into Dung's\nargumentation frameworks (http://hackage.haskell.org/package/Dung).\nThis package provides a translation function and correspondence\nproperties. See \"Towards a framework for the implementation and\nverification of translations between argumentation models\" by\nBas van Gijzel and Henrik Nilsson or the package's homepage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."CarneadesDSL" or (errorHandler.buildDepError "CarneadesDSL"))
          (hsPkgs."Dung" or (errorHandler.buildDepError "Dung"))
          ];
        buildable = true;
        };
      };
    }