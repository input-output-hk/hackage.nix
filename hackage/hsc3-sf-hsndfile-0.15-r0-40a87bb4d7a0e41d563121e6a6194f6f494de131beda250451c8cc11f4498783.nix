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
      identifier = { name = "hsc3-sf-hsndfile"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2012-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hsc3-sf-hsndfile";
      url = "";
      synopsis = "Haskell SuperCollider SoundFile";
      description = "hsc3-sf-sndfile provides a trivial hsc3-sf equivalent\ninterface to Stefan Kersten's hsndfile package.  hsndfile\nhas more extensive dependencies than hsc3-sf, and this\nallows the two packages to be used interchangably by\nmodifying a single import.";
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