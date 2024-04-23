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
      identifier = { name = "hasloGUI"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, Bartosz Wojcik";
      maintainer = "Bartosz Wojcik <bartoszmwojcik@gmail.com>";
      author = "Bartosz Wojcik";
      homepage = "";
      url = "";
      synopsis = "Loan calculator Gtk GUI. Based on haslo (Haskell Loan) library.";
      description = "Example of usage of loan library named Haslo and of wtk-gtk wrapper over gtk.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "HasloGUI" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."lenses" or (errorHandler.buildDepError "lenses"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."haslo" or (errorHandler.buildDepError "haslo"))
            (hsPkgs."wtk" or (errorHandler.buildDepError "wtk"))
            (hsPkgs."wtk-gtk" or (errorHandler.buildDepError "wtk-gtk"))
          ];
          buildable = true;
        };
      };
    };
  }