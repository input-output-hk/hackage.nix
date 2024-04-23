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
      specVersion = "2.2";
      identifier = { name = "RabbitMQ"; version = "0.1.0.0"; };
      license = "BSD-3-Clause AND GPL-3.0-or-later";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Holger Reinhardt, Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "AMQP 0-9-1 client library for RabbitMQ servers";
      description = "This library provides an AMQP 0-9-1 client library for <http://www.rabbitmq.com RabbitMQ> servers.\n\nThis library is a fork of the <http://hackage.haskell.org/package/amqp amqp package> based on <http://hackage.haskell.org/package/HsOpenSSL HsOpenSSL> for providing TLS support.\n\nSee \"Network.AMQP\" for documentation and a usage example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."openssl-streams" or (errorHandler.buildDepError "openssl-streams"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
        ];
        buildable = true;
      };
    };
  }