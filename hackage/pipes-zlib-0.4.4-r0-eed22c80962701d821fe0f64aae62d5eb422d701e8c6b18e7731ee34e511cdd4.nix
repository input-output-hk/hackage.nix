{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "pipes-zlib";
        version = "0.4.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Paolo Capriotti 2012,\nRenzo Carbonara 2013-2014";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara, Paolo Capriotti";
      homepage = "https://github.com/k0001/pipes-zlib";
      url = "";
      synopsis = "Zlib and GZip compression and decompression for Pipes streams";
      description = "Zlib and GZip compression and decompression for Pipes streams";
      buildType = "Simple";
    };
    components = {
      "pipes-zlib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.pipes)
          (hsPkgs.bytestring)
          (hsPkgs.streaming-commons)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pipes-zlib)
            (hsPkgs.pipes)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }