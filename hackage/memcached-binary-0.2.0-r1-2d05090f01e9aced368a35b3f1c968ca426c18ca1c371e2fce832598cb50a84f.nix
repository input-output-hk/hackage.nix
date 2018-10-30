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
        name = "memcached-binary";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/memcached-binary";
      url = "";
      synopsis = "memcached client using binary protocol.";
      description = "memcached client using binary protocol.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.storable-endian)
          (hsPkgs.data-default-class)
          (hsPkgs.resource-pool)
          (hsPkgs.unordered-containers)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.memcached-binary)
            (hsPkgs.process)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.data-default-class)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }