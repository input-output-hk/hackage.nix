{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          (hsPkgs."openssl-streams" or ((hsPkgs.pkgs-errors).buildDepError "openssl-streams"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          ];
        buildable = true;
        };
      };
    }