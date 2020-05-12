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
      identifier = { name = "hsc3"; version = "0.11"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2006-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hsc3";
      url = "";
      synopsis = "Haskell SuperCollider";
      description = "hsc3 facilitates using haskell as a client to the\nSuperCollider synthesis server.\nFor detailed installation and configuration\ninformation please consult the /Tutorial/ and\n/Introduction/ documents at\n<http://slavepianos.org/rd/ut/hsc3-texts/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cmath" or (errorHandler.buildDepError "cmath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."murmur-hash" or (errorHandler.buildDepError "murmur-hash"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      };
    }