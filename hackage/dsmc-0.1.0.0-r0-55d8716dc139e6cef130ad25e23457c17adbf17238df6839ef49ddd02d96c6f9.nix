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
      identifier = { name = "dsmc"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "";
      url = "";
      synopsis = "DSMC library for rarefied gas dynamics";
      description = "Direct Simulation Monte Carlo is the numerical\nused to model the behavior of rarefied gas flows.\nThis implementation supports complex bodies\ndefined using Constructive Solid Geometry, using\nuniform grids and ray-casting. Specular, diffuse\nand CLL gas-surface interaction models are\nprovided. Macroscopic parameters of number\ndensity, absolute velocity, pressure and\ntranslational temperature are obtained as the\nresult of the simulation. The library employs\nparallelism on all steps of the DSMC algorithm.\nSee the dsmc-tools package for command-line\ninterfaces to the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }