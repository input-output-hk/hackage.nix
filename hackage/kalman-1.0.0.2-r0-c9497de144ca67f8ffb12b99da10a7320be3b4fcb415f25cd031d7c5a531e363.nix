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
      identifier = { name = "kalman"; version = "1.0.0.2"; };
      license = "MIT";
      copyright = "Dominic Steinitz, Jacob West";
      maintainer = "dominic@steinitz.org";
      author = "Dominic Steinitz, Jacob West";
      homepage = "https://github.com/idontgetoutmuch/Kalman";
      url = "";
      synopsis = "Kalman and particle filters and smoothers";
      description = "Linear, extended and unscented Kalman filters are provided, along\nwith their corresponding smoothers. Furthermore, a particle filter\nand smoother is provided.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."random-fu-multivariate" or (errorHandler.buildDepError "random-fu-multivariate"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "kalman-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kalman" or (errorHandler.buildDepError "kalman"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."random-fu-multivariate" or (errorHandler.buildDepError "random-fu-multivariate"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
            (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
            ];
          buildable = true;
          };
        };
      };
    }