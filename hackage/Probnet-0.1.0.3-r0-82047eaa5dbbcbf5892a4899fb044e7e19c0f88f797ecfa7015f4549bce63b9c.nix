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
      identifier = { name = "Probnet"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "Cobalt Technologies S.A";
      maintainer = "vnos@cobalt.tech,vnos@blackhole.consulting";
      author = "Vicent Nos";
      homepage = "https://github.com/pedroelbanquero/geometric-extrapolation";
      url = "";
      synopsis = "Geometric Extrapolation of Integer Sequences with error prediction ";
      description = "Solves thousands of oeis.org math functions just in one, Probnet . A new way to calculate and predict results from the data source without knowing the function who composes a data set. Aplications in math, AI, infromation compresion when the data source follows math patterns. Describe the 100 % accuracy functions in 3 fraction parameters and 1 parameter for the index.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }