{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "amqp";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Holger Reinhardt <hreinhardt@gmail.com>";
        author = "Holger Reinhardt";
        homepage = "https://github.com/hreinhardt/amqp";
        url = "";
        synopsis = "Client library for AMQP servers (currently only RabbitMQ)";
        description = "Client library for AMQP servers (currently only RabbitMQ)\n\nChangelog: <https://github.com/hreinhardt/amqp/blob/master/README.md>";
        buildType = "Simple";
      };
      components = {
        amqp = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.data-binary-ieee754
            hsPkgs.text
          ];
        };
      };
    }