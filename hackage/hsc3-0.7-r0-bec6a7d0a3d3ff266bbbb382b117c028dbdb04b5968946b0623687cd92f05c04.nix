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
      identifier = { name = "hsc3"; version = "0.7"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2006-2009";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/f/207949/";
      url = "";
      synopsis = "Haskell SuperCollider";
      description = "hsc3 provides Sound.SC3, a haskell module that\nfacilitates using haskell as a client to the\nSuperCollider synthesis server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }