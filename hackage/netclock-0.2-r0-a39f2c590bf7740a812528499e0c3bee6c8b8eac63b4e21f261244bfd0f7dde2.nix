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
      specVersion = "1.4";
      identifier = {
        name = "netclock";
        version = "0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "netclock@mail.slab.org";
      author = "Alex McLean";
      homepage = "http://netclock.slab.org/";
      url = "";
      synopsis = "Netclock protocol";
      description = "Implementation of the Netclock protocol for sharing clocks in music performance";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.hosc)
        ];
      };
    };
  }