{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pcap-enumerator";
          version = "0.5";
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
        pcap-enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.pcap
            hsPkgs.enumerator
            hsPkgs.bytestring
          ];
        };
      };
    }