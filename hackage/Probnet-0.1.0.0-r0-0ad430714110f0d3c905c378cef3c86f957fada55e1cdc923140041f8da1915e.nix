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
      identifier = { name = "Probnet"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Cobalt Technologies S.A";
      maintainer = "vnos@cobalt.tech,vnos@blackhole.consulting";
      author = "Vicent Nos";
      homepage = "https://github.com/pedroelbanquero/geometric-extrapolation";
      url = "";
      synopsis = "geometric extrapolation with error prediction for data sequences prediction";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }