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
      identifier = { name = "statsd-client"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "© Keith Duncan";
      maintainer = "Keith Duncan";
      author = "Keith Duncan";
      homepage = "https://github.com/keithduncan/statsd-client";
      url = "";
      synopsis = "Statsd UDP client";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."digest-pure" or (errorHandler.buildDepError "digest-pure"))
          (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."DRBG" or (errorHandler.buildDepError "DRBG"))
          ];
        buildable = true;
        };
      };
    }