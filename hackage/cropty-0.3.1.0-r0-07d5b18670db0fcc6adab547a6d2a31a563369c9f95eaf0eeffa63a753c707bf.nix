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
      specVersion = "2.4";
      identifier = { name = "cropty"; version = "0.3.1.0"; };
      license = "MIT";
      copyright = "2021 Samuel Schlesinger";
      maintainer = "sgschlesinger@gmail.com";
      author = "Samuel Schlesinger";
      homepage = "https://github.com/SamuelSchlesinger/cropty";
      url = "";
      synopsis = "Encryption and decryption";
      description = "Encryption and decryption.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      tests = {
        "test-cropty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."cropty" or (errorHandler.buildDepError "cropty"))
            ];
          buildable = true;
          };
        };
      };
    }