{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "statsd-client"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "© Keith Duncan";
      maintainer = "Keith Duncan";
      author = "Keith Duncan";
      homepage = "https://github.com/keithduncan/statsd-client";
      url = "";
      synopsis = "Statsd UDP client";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.random)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.cryptohash)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.digest-pure)
          (hsPkgs.time-units)
          (hsPkgs.crypto-api)
          (hsPkgs.DRBG)
          ];
        };
      };
    }