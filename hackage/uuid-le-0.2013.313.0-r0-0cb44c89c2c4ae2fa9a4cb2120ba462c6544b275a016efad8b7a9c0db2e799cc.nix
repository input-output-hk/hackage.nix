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
      identifier = { name = "uuid-le"; version = "0.2013.313.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "rhymoid@gmail.com";
      author = "Stijn van Drongelen";
      homepage = "";
      url = "";
      synopsis = "Codec for little-endian Universally Unique Identifiers";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }