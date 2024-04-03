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
      identifier = { name = "nkeys"; version = "0.0.1.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "autodidaddict@users.noreply.github.com";
      author = "Kevin Hoffman";
      homepage = "https://github.com/autodidaddict/nkeys-hs";
      url = "";
      synopsis = "Nkeys ed25519 encoding for use with NATS";
      description = "This library exposes a custom encoding and decoding mechanism for ed25519 keys. This codec produces keys that are both URL safe and double-clickable ";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "nkeys-lib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ed25519" or (errorHandler.buildDepError "ed25519"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base32" or (errorHandler.buildDepError "base32"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          buildable = true;
          };
        };
      tests = {
        "nkeys-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base32" or (errorHandler.buildDepError "base32"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ed25519" or (errorHandler.buildDepError "ed25519"))
            (hsPkgs."nkeys".components.sublibs.nkeys-lib or (errorHandler.buildDepError "nkeys:nkeys-lib"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }