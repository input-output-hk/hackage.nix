{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lz4-conduit";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sven@sven.cc";
      author = "Sven Mattsen";
      homepage = "https://github.com/bigmac2k/lz4-conduit";
      url = "";
      synopsis = "LZ4 compression for conduits";
      description = "lz4 compression for conduits, using https://github.com/lz4/lz4";
      buildType = "Simple";
    };
    components = {
      "lz4-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
          (hsPkgs.resourcet)
          (hsPkgs.mtl)
          (hsPkgs.binary)
        ];
      };
      exes = {
        "LZ4" = {
          depends  = [
            (hsPkgs.lz4-conduit)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
          ];
        };
      };
      tests = {
        "props" = {
          depends  = [
            (hsPkgs.lz4-conduit)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.resourcet)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-arbitrary)
          ];
        };
      };
    };
  }