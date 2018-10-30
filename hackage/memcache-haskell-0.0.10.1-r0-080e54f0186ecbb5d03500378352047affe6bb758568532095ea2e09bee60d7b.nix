{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { sample = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "memcache-haskell";
        version = "0.0.10.1";
      };
      license = "MIT";
      copyright = "(c) 2015 GREE, Inc.";
      maintainer = "Kiyoshi Ikehara";
      author = "Kiyoshi Ikehara";
      homepage = "";
      url = "";
      synopsis = "Memcache procotol library";
      description = "A memcache protocol library for client and server applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.attoparsec)
          (hsPkgs.transformers)
          (hsPkgs.split)
          (hsPkgs.hashable)
        ];
      };
      exes = {
        "memcache-sample-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.stm)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
            (hsPkgs.mtl)
            (hsPkgs.hashtables)
            (hsPkgs.conduit-extra)
            (hsPkgs.memcache-haskell)
          ];
        };
        "memcache-sample-retrieval" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.stm)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
            (hsPkgs.mtl)
            (hsPkgs.hashtables)
            (hsPkgs.conduit-extra)
            (hsPkgs.memcache-haskell)
          ];
        };
      };
      tests = {
        "test-memcache" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.split)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-th)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.memcache-haskell)
          ];
        };
      };
    };
  }