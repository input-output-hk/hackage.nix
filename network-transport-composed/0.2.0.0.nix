{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network-transport-composed";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Well-Typed LLP";
        maintainer = "edsko@well-typed.com, watson.timothy@gmail.com";
        author = "Edsko de Vries";
        homepage = "http://haskell-distributed.github.com";
        url = "";
        synopsis = "Compose network transports";
        description = "";
        buildType = "Simple";
      };
      components = {
        network-transport-composed = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network-transport
          ];
        };
      };
    }