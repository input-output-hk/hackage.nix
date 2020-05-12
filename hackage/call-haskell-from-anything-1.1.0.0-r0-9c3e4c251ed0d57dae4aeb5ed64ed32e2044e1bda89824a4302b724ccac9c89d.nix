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
      identifier = {
        name = "call-haskell-from-anything";
        version = "1.1.0.0";
        };
      license = "MIT";
      copyright = "";
      maintainer = "Niklas Hambüchen (mail@nh2.me)";
      author = "Niklas Hambüchen (mail@nh2.me)";
      homepage = "https://github.com/nh2/call-haskell-from-anything";
      url = "";
      synopsis = "Call Haskell functions from other languages via serialization and dynamic libraries";
      description = "FFI via serialisation. See https://github.com/nh2/call-haskell-from-anything for details.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-msgpack" or (errorHandler.buildDepError "data-msgpack"))
          (hsPkgs."storable-endian" or (errorHandler.buildDepError "storable-endian"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "call-haskell-from-anything.so" = {
          depends = [
            (hsPkgs."call-haskell-from-anything" or (errorHandler.buildDepError "call-haskell-from-anything"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-msgpack" or (errorHandler.buildDepError "data-msgpack"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }