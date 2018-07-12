{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "posix-socket";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2011, 2017 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        homepage = "https://github.com/mvv/posix-socket";
        url = "";
        synopsis = "Bindings to the POSIX socket API";
        description = "This package provides bindings to the POSIX socket API.";
        buildType = "Simple";
      };
      components = {
        "posix-socket" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.bytestring
            hsPkgs.data-default-class
            hsPkgs.data-flags
            hsPkgs.network-ip
            hsPkgs.transformers-base
          ];
        };
      };
    }