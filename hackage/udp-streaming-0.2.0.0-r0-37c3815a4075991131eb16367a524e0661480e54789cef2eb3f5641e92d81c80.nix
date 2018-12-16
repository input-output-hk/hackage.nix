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
      specVersion = "1.18";
      identifier = {
        name = "udp-streaming";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "(c) 2018 Mihai Giurgeanu";
      maintainer = "mihai.giurgeanu@gmail.com";
      author = "Mihai Giurgeanu";
      homepage = "https://hub.darcs.net/mihaigiurgeanu/udp-streaming";
      url = "";
      synopsis = "Streaming to and from UDP socket";
      description = "Simple fire-and-forget udp Streaming components modelled after udp-conduit";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.resourcet)
          (hsPkgs.streaming)
        ];
      };
    };
  }