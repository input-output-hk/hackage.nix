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
      specVersion = "3.4";
      identifier = { name = "xtea"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Luke Nadur";
      author = "Luke Nadur";
      homepage = "https://github.com/intricate/xtea-haskell";
      url = "";
      synopsis = "XTEA (eXtended Tiny Encryption Algorithm).";
      description = "Haskell implementation of the\n[XTEA (eXtended Tiny Encryption Algorithm)](https://en.wikipedia.org/wiki/XTEA)\nblock cipher.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "xtea-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."xtea" or (errorHandler.buildDepError "xtea"))
          ];
          buildable = true;
        };
      };
    };
  }