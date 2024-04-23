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
      identifier = { name = "BufferedSocket"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tomas.o.more@gmail.com";
      author = "Tomas Möre";
      homepage = "";
      url = "";
      synopsis = "BROKEN VERSION";
      description = "THIS VERSION IS BROKEN DO NOT USE! ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
    };
  }