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
      specVersion = "1.8";
      identifier = {
        name = "ConcurrentUtils";
        version = "0.4.2.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "info@alkalisoftware.net";
      author = "James Candy";
      homepage = "http://alkalisoftware.net";
      url = "";
      synopsis = "Concurrent utilities";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parallel)
          (hsPkgs.cryptohash)
          (hsPkgs.RSA)
          (hsPkgs.crypto-random)
          (hsPkgs.securemem)
          (hsPkgs.reexport-crypto-random)
          (hsPkgs.tagged)
        ];
      };
    };
  }