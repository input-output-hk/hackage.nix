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
      identifier = { name = "hsc3-plot"; version = "0.13"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2012";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-plot";
      url = "";
      synopsis = "Haskell SuperCollider Plotting";
      description = "Plotting functions for hsc3";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }