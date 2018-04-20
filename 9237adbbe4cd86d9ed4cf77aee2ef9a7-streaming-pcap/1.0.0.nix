{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming-pcap";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Colin Woodbury";
        maintainer = "colingw@gmail.com";
        author = "Colin Woodbury";
        homepage = "https://github.com/fosskers/streaming-pcap";
        url = "";
        synopsis = "Stream packets via libpcap.";
        description = "Stream packets via libpcap.";
        buildType = "Simple";
      };
      components = {
        streaming-pcap = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.pcap
            hsPkgs.streaming
          ];
        };
        tests = {
          streaming-pcap-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.pcap
              hsPkgs.streaming
              hsPkgs.streaming-pcap
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }