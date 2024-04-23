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
      identifier = { name = "hps-cairo"; version = "0.11"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hps-cairo";
      url = "";
      synopsis = "Cairo rendering for the haskell postscript library";
      description = "Cairo rendering for the haskell postscript library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."hps" or (errorHandler.buildDepError "hps"))
        ];
        buildable = true;
      };
      exes = {
        "hps-cairo-animation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."hps" or (errorHandler.buildDepError "hps"))
            (hsPkgs."hps-cairo" or (errorHandler.buildDepError "hps-cairo"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "hps-cairo-screen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."hps" or (errorHandler.buildDepError "hps"))
            (hsPkgs."hps-cairo" or (errorHandler.buildDepError "hps-cairo"))
          ];
          buildable = true;
        };
      };
    };
  }