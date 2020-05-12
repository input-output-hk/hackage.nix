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
      identifier = { name = "cisco-spark-api"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Naoto Shimazaki";
      maintainer = "Naoto.Shimazaki@gmail.com";
      author = "Naoto Shimazaki";
      homepage = "https://github.com/nshimaza/cisco-spark-api#readme";
      url = "";
      synopsis = "A Haskell bindings for Cisco Spark API";
      description = "Cisco-spark-api package provides types and functions for accessing Cisco Spark REST API.\nThis package is designed to improve type safety over the API.  Each entity is separately typed.\nJSON messages contained in REST responses are decoded into appropriate type of Haskell record.\nJSON messages sent in REST requests are encoded only from correct type of record.\nSome Spark REST API returning list of objects require HTTP Link Header based pagination.\nHaskell functions abstract it.  They automatically request subsequent pages as needed and\nseamlessly stream returned elements rather than just return a chunk of elements in a response.\nThis package also provides some sample usage in command line application style.\nSee source under app directory of the source package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bitset-word8" or (errorHandler.buildDepError "bitset-word8"))
          ];
        buildable = true;
        };
      exes = {
        "cisco-spark-api-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."cisco-spark-api" or (errorHandler.buildDepError "cisco-spark-api"))
            ];
          buildable = true;
          };
        };
      tests = {
        "cisco-spark-api-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."cisco-spark-api" or (errorHandler.buildDepError "cisco-spark-api"))
            (hsPkgs."thread-hierarchy" or (errorHandler.buildDepError "thread-hierarchy"))
            ];
          buildable = true;
          };
        };
      };
    }