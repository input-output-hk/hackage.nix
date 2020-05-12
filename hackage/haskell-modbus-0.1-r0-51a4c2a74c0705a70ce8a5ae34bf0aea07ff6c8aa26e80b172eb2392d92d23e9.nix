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
      identifier = { name = "haskell-modbus"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jhickner@gmail.com";
      author = "Jason Hickner";
      homepage = "http://www.github.com/jhickner/haskell-modbus";
      url = "";
      synopsis = "A haskell implementation of the Modbus protocol";
      description = "A haskell implementation of the Modbus protocol";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }