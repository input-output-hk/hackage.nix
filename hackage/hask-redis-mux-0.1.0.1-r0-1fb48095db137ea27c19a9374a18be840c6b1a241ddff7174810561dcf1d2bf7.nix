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
      specVersion = "3.0";
      identifier = { name = "hask-redis-mux"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "sspeaks610@gmail.com";
      author = "Seth Speaks";
      homepage = "https://github.com/sspeaks/redis-client";
      url = "";
      synopsis = "A RESP protocol implementation and multiplexed Redis client library";
      description = "hask-redis-mux provides a full RESP protocol parser, Redis client with TLS support,\nCRC16 hash slot computation, and a multiplexed Redis Cluster client with connection\npooling and automatic topology discovery.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hask-redis-mux".components.sublibs.resp or (errorHandler.buildDepError "hask-redis-mux:resp"))
          (hsPkgs."hask-redis-mux".components.sublibs.client or (errorHandler.buildDepError "hask-redis-mux:client"))
          (hsPkgs."hask-redis-mux".components.sublibs.crc16 or (errorHandler.buildDepError "hask-redis-mux:crc16"))
          (hsPkgs."hask-redis-mux".components.sublibs.redis-command-client or (errorHandler.buildDepError "hask-redis-mux:redis-command-client"))
          (hsPkgs."hask-redis-mux".components.sublibs.cluster or (errorHandler.buildDepError "hask-redis-mux:cluster"))
          (hsPkgs."hask-redis-mux".components.sublibs.redis or (errorHandler.buildDepError "hask-redis-mux:redis"))
        ];
        buildable = true;
      };
      sublibs = {
        "resp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypton-x509-system" or (errorHandler.buildDepError "crypton-x509-system"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          ];
          buildable = true;
        };
        "crc16" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
        "redis-command-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hask-redis-mux".components.sublibs.client or (errorHandler.buildDepError "hask-redis-mux:client"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."hask-redis-mux".components.sublibs.resp or (errorHandler.buildDepError "hask-redis-mux:resp"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "cluster" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hask-redis-mux".components.sublibs.client or (errorHandler.buildDepError "hask-redis-mux:client"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hask-redis-mux".components.sublibs.crc16 or (errorHandler.buildDepError "hask-redis-mux:crc16"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."hask-redis-mux".components.sublibs.redis-command-client or (errorHandler.buildDepError "hask-redis-mux:redis-command-client"))
            (hsPkgs."hask-redis-mux".components.sublibs.resp or (errorHandler.buildDepError "hask-redis-mux:resp"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "redis" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hask-redis-mux".components.sublibs.client or (errorHandler.buildDepError "hask-redis-mux:client"))
            (hsPkgs."hask-redis-mux".components.sublibs.cluster or (errorHandler.buildDepError "hask-redis-mux:cluster"))
            (hsPkgs."hask-redis-mux".components.sublibs.redis-command-client or (errorHandler.buildDepError "hask-redis-mux:redis-command-client"))
            (hsPkgs."hask-redis-mux".components.sublibs.resp or (errorHandler.buildDepError "hask-redis-mux:resp"))
          ];
          buildable = true;
        };
      };
      tests = {
        "RespSpec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hask-redis-mux".components.sublibs.redis-command-client or (errorHandler.buildDepError "hask-redis-mux:redis-command-client"))
            (hsPkgs."hask-redis-mux".components.sublibs.resp or (errorHandler.buildDepError "hask-redis-mux:resp"))
          ];
          buildable = true;
        };
        "ClusterSpec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hask-redis-mux".components.sublibs.cluster or (errorHandler.buildDepError "hask-redis-mux:cluster"))
            (hsPkgs."hask-redis-mux".components.sublibs.resp or (errorHandler.buildDepError "hask-redis-mux:resp"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "ClusterCommandSpec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hask-redis-mux".components.sublibs.client or (errorHandler.buildDepError "hask-redis-mux:client"))
            (hsPkgs."hask-redis-mux".components.sublibs.cluster or (errorHandler.buildDepError "hask-redis-mux:cluster"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hask-redis-mux".components.sublibs.resp or (errorHandler.buildDepError "hask-redis-mux:resp"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "MultiplexerSpec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hask-redis-mux".components.sublibs.client or (errorHandler.buildDepError "hask-redis-mux:client"))
            (hsPkgs."hask-redis-mux".components.sublibs.cluster or (errorHandler.buildDepError "hask-redis-mux:cluster"))
            (hsPkgs."hask-redis-mux".components.sublibs.resp or (errorHandler.buildDepError "hask-redis-mux:resp"))
          ];
          buildable = true;
        };
        "FromRespSpec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hask-redis-mux".components.sublibs.redis-command-client or (errorHandler.buildDepError "hask-redis-mux:redis-command-client"))
            (hsPkgs."hask-redis-mux".components.sublibs.resp or (errorHandler.buildDepError "hask-redis-mux:resp"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "MultiplexPoolSpec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hask-redis-mux".components.sublibs.client or (errorHandler.buildDepError "hask-redis-mux:client"))
            (hsPkgs."hask-redis-mux".components.sublibs.cluster or (errorHandler.buildDepError "hask-redis-mux:cluster"))
            (hsPkgs."hask-redis-mux".components.sublibs.resp or (errorHandler.buildDepError "hask-redis-mux:resp"))
          ];
          buildable = true;
        };
      };
    };
  }