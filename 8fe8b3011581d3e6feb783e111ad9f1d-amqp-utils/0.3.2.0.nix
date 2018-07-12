{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amqp-utils";
          version = "0.3.2.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "fd@taz.de";
        author = "Frank Doepper";
        homepage = "";
        url = "";
        synopsis = "Generic Haskell AMQP Consumer";
        description = "AMQP consumer which can\n- create a temporary queue and attach it to an exchange, or\n- attach to an existing queue;\n- display header and body info;\n- save message bodies to files;\n- call a callback script";
        buildType = "Simple";
      };
      components = {
        exes = {
          "konsum" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.connection
              hsPkgs.data-default-class
              hsPkgs.time
              hsPkgs.process
              hsPkgs.bytestring
              hsPkgs.x509-system
              hsPkgs.tls
              hsPkgs.amqp
            ];
          };
          "agitprop" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.connection
              hsPkgs.data-default-class
              hsPkgs.time
              hsPkgs.process
              hsPkgs.bytestring
              hsPkgs.x509-system
              hsPkgs.tls
              hsPkgs.amqp
              hsPkgs.unix
              hsPkgs.hinotify
              hsPkgs.magic
            ];
          };
        };
      };
    }