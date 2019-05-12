{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "streaming-pcap"; version = "1.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 - 2019 Colin Woodbury";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/streaming-pcap";
      url = "";
      synopsis = "Stream packets via libpcap.";
      description = "Stream packets via libpcap. Requires `libpcap` to be installed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.pcap)
          (hsPkgs.resourcet)
          (hsPkgs.streaming)
          (hsPkgs.streaming-attoparsec)
          (hsPkgs.streaming-bytestring)
          ];
        };
      tests = {
        "streaming-pcap-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.pcap)
            (hsPkgs.resourcet)
            (hsPkgs.streaming)
            (hsPkgs.streaming-attoparsec)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.streaming-pcap)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }