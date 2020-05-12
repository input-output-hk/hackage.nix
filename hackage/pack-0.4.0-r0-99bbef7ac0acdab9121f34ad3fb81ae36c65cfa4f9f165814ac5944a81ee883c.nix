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
      identifier = { name = "pack"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) capsjac 2015";
      maintainer = "capsjac <capsjac at gmail dot com>";
      author = "capsjac <capsjac at gmail dot com>";
      homepage = "https://github.com/capsjac/pack";
      url = "";
      synopsis = "Bidirectional fast ByteString packer/unpacker";
      description = "Serializer and deserializer are unified in this way.\nThis package is suitable for parsing small data packets\nand binary blobs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }