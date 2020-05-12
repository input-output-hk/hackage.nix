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
      identifier = { name = "bno055-haskell"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2017 Edward Amsden";
      maintainer = "edwardamsden@gmail.com";
      author = "Edward Amsden";
      homepage = "https://bitbucket.org/fmapE/bno055-haskell";
      url = "";
      synopsis = "Library for communication with the Bosch BNO055 orientation sensor";
      description = "Library for controlling and reading the Bosch BNO055 absolute orientation sensor.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."h2c" or (errorHandler.buildDepError "h2c"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
        buildable = true;
        };
      };
    }