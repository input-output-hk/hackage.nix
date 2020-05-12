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
      identifier = { name = "hsc3-lang"; version = "0.8"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2007-2010";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hsc3-lang";
      url = "";
      synopsis = "Haskell SuperCollider Language";
      description = "Haskell library defining operations from the\nSuperCollider language class library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }