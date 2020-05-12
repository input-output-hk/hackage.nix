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
      identifier = { name = "crypto-totp"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shawjef3@gmail.com";
      author = "Jeff Shaw";
      homepage = "";
      url = "";
      synopsis = "Provides generation and verification services for time-based one-time keys.";
      description = "Generate and verify one-time keys.\n\nPlease see <http://tools.ietf.org/html/rfc6238>.\n\nChanges:\n\n0.1.0.1: Hopefully works with 32-bit integer CTime.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          ];
        buildable = true;
        };
      };
    }