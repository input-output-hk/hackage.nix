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
      specVersion = "1.18";
      identifier = { name = "numeric-ode"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Alexander V Vershilov, Dominic Steinitz";
      maintainer = "dominic@steinitz.org";
      author = "Alexander V Vershilov, Dominic Steinitz";
      homepage = "https://github.com/qnikst/numeric-ode";
      url = "";
      synopsis = "Ode solvers";
      description = "Some ode solvers, e.g., Störmer-Verlet";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."tdigest" or (errorHandler.buildDepError "tdigest"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          ];
        buildable = true;
        };
      exes = {
        "Kepler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."numeric-ode" or (errorHandler.buildDepError "numeric-ode"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."diagrams-rasterific" or (errorHandler.buildDepError "diagrams-rasterific"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."plots" or (errorHandler.buildDepError "plots"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }