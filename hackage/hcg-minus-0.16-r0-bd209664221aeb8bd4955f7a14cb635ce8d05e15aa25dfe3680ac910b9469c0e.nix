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
      identifier = { name = "hcg-minus"; version = "0.16"; };
      license = "BSD-3-Clause";
      copyright = "(c) rohan drape, 2011-2017";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hcg-minus";
      url = "";
      synopsis = "haskell cg (minus)";
      description = "cg (minus) library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }