{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming-pcap";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Colin Woodbury";
        maintainer = "colingw@gmail.com";
        author = "Colin Woodbury";
        homepage = "https://github.com/fosskers/streaming-pcap";
        url = "";
        synopsis = "Stream packets via libpcap.";
        description = "Stream packets via libpcap. Requires `libpcap` to be installed.";
        buildType = "Simple";
      };
      components = {
        "streaming-pcap" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.pcap
            hsPkgs.streaming
            hsPkgs.streaming-bytestring
            hsPkgs.streaming-utils
          ];
        };
        tests = {
          "streaming-pcap-test" = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.pcap
              hsPkgs.streaming
              hsPkgs.streaming-bytestring
              hsPkgs.streaming-pcap
              hsPkgs.streaming-utils
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
        benchmarks = {
          "kanji-bench" = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.pcap
              hsPkgs.streaming
              hsPkgs.streaming-bytestring
              hsPkgs.streaming-pcap
              hsPkgs.streaming-utils
            ];
          };
        };
      };
    }