{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "modbus-tcp";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "2013–2016 Roel van Dijk, Tim Schwarte";
        maintainer = "Roel van Dijk <roel@lambdacube.nl>";
        author = "Roel van Dijk <roel@lambdacube.nl>, Tim Schwarte <tim@timschwarte.nl>";
        homepage = "https://github.com/roelvandijk/modbus-tcp";
        url = "";
        synopsis = "Communicate with Modbus devices over TCP";
        description = "Implements the Modbus TPC/IP protocol.";
        buildType = "Simple";
      };
      components = {
        modbus-tcp = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.network
            hsPkgs.transformers
          ];
        };
      };
    }