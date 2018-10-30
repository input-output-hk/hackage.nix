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
      specVersion = "1.10";
      identifier = {
        name = "udp-streaming";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "(c) 2018 Mihai Giurgeanu";
      maintainer = "mihai.giurgeanu@gmail.com";
      author = "Mihai Giurgeanu";
      homepage = "https://hub.darcs.net/mihaigiurgeanu/udp-streaming";
      url = "";
      synopsis = "Simple fire-and-forget udp Streaming components modelled after udp-conduit";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.resourcet)
          (hsPkgs.streaming)
        ];
      };
    };
  }