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
      identifier = { name = "hsc3-auditor"; version = "0.12"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2010-2012";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-auditor";
      url = "";
      synopsis = "Haskell SuperCollider Auditor";
      description = "A simple-minded auditioner for music structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hmt" or (errorHandler.buildDepError "hmt"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          ];
        buildable = true;
        };
      };
    }