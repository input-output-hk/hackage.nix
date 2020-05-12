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
      identifier = { name = "decoder-conduit"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hanooter@gmail.com";
      author = "Kyle Hanson";
      homepage = "https://github.com/hansonkd/decoder-conduit";
      url = "";
      synopsis = "Conduit for decoding ByteStrings using Data.Binary.Get";
      description = "Simple conduit for decoding ByteStrings into values using Data.Binary.Get";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          ];
        buildable = true;
        };
      };
    }