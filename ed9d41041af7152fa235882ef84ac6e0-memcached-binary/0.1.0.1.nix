{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "memcached-binary";
        version = "0.1.0.1";
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
      "memcached-binary" = {
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
            (hsPkgs.memcached-binary)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
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