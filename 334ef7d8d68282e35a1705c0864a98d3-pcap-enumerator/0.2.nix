{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "pcap-enumerator";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cutsea110@gmail.com";
        author = "Katsutoshi Itoh";
        homepage = "http://github.com/cutsea110/pcap-enumerator";
        url = "";
        synopsis = "Convert a pcap into an enumerator.";
        description = "pcap enumerator package";
        buildType = "Simple";
      };
      components = {
        "pcap-enumerator" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.pcap
            hsPkgs.enumerator
            hsPkgs.bytestring
          ];
        };
      };
    }