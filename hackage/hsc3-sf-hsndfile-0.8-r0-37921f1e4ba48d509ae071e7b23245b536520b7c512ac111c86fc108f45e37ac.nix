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
      identifier = { name = "hsc3-sf-hsndfile"; version = "0.8"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2010";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hsc3-sf-hsndfile";
      url = "";
      synopsis = "Haskell SuperCollider SoundFile";
      description = "Provide hsc3-sf interface to Stefan\nKersten's hsndfile package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsc3-sf" or (errorHandler.buildDepError "hsc3-sf"))
          (hsPkgs."hsndfile" or (errorHandler.buildDepError "hsndfile"))
          (hsPkgs."hsndfile-vector" or (errorHandler.buildDepError "hsndfile-vector"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }