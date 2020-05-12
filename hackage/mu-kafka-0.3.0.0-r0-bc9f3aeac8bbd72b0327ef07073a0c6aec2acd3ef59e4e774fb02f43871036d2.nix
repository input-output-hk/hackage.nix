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
      identifier = { name = "mu-kafka"; version = "0.3.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright © 2020 <http://47deg.com 47 Degrees>";
      maintainer = "alejandro.serrano@47deg.com";
      author = "Alejandro Serrano, Flavio Corpa";
      homepage = "https://github.com/higherkindness/mu-haskell";
      url = "";
      synopsis = "Utilities for interoperation between Mu and Kafka";
      description = "This package provides simple interoperation between Mu and Kafka using @hw-kafka-client@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."avro" or (errorHandler.buildDepError "avro"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."hw-kafka-client" or (errorHandler.buildDepError "hw-kafka-client"))
          (hsPkgs."hw-kafka-conduit" or (errorHandler.buildDepError "hw-kafka-conduit"))
          (hsPkgs."mu-avro" or (errorHandler.buildDepError "mu-avro"))
          (hsPkgs."mu-schema" or (errorHandler.buildDepError "mu-schema"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
        buildable = true;
        };
      };
    }