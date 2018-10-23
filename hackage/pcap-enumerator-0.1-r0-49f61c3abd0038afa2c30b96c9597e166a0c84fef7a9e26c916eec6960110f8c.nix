{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "pcap-enumerator";
        version = "0.1";
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
          (hsPkgs.base)
          (hsPkgs.pcap)
          (hsPkgs.enumerator)
          (hsPkgs.bytestring)
        ];
      };
    };
  }