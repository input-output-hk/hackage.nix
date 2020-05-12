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
      identifier = { name = "hosc"; version = "0.8"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2010";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hosc";
      url = "";
      synopsis = "Haskell Open Sound Control";
      description = "hosc provides Sound.OpenSoundControl, a haskell\nmodule implementing a subset of the Open Sound\nControl byte protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }