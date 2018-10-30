{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "pcap";
        version = "0.2";
      };
      license = "BSD-4-Clause";
      copyright = "";
      maintainer = "nickburlett@mac.com, dominic.steinitz@blueyonder.co.uk";
      author = "";
      homepage = "";
      url = "";
      synopsis = "pcap interface";
      description = "FFI Wrapper around libpcap";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.haskell98)
        ];
      };
    };
  }