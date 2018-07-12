{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dns";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "DNS libary in Haskell";
        description = "DNS libary. Currently only resolver side\nis supported. That is, this library includes\na composer of DNS query and a parser of DNS\nresponse.";
        buildType = "Simple";
      };
      components = {
        "dns" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.binary
            hsPkgs.iproute
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.network
          ];
        };
      };
    }