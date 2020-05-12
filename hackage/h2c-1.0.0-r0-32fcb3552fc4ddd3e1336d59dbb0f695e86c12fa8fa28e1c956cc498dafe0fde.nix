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
      identifier = { name = "h2c"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2017 Edward Amsden";
      maintainer = "edwardamsden@gmail.com";
      author = "Edward Amsden";
      homepage = "https://bitbucket.org/fmapE/h2c";
      url = "";
      synopsis = "Bindings to Linux I2C with support for repeated-start transactions.";
      description = "H2C is a high-level binding to the Linux I2C subsystem with support for repeated-start transactions, not just individual reads and writes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
        buildable = true;
        };
      };
    }