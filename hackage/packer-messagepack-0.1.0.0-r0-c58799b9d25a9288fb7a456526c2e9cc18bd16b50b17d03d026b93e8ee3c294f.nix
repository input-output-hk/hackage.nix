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
      identifier = { name = "packer-messagepack"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/packer-msgpack#readme";
      url = "";
      synopsis = "MessagePack Serialization an Deserialization for Packer";
      description = "This package implements MessagePack on top of the Packer package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."packer" or (errorHandler.buildDepError "packer"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          ];
        buildable = true;
        };
      tests = {
        "packer-msgpack-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."packer" or (errorHandler.buildDepError "packer"))
            (hsPkgs."packer-messagepack" or (errorHandler.buildDepError "packer-messagepack"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            ];
          buildable = true;
          };
        };
      };
    }