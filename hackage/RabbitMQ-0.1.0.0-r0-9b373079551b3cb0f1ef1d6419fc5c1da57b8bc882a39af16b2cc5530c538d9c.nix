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
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.split)
          (hsPkgs.clock)
          (hsPkgs.monad-control)
          (hsPkgs.vector)
          (hsPkgs.stm)
          (hsPkgs.network-uri)
          (hsPkgs.network)
          (hsPkgs.io-streams)
          (hsPkgs.openssl-streams)
          (hsPkgs.HsOpenSSL)
          ];
        };
      };
    }