{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lz4"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Mark Wotton, Austin Seipp 2012";
      maintainer = "mwotton@gmail.com";
      author = "Mark Wotton <mwotton@gmail.com)";
      homepage = "http://github.com/mwotton/lz4hs";
      url = "";
      synopsis = "LZ4 compression for ByteStrings";
      description = "High level bindings to the LZ4 compression library.\n\nCurrently based on lz4 r75. C sources are included and no external\ndependencies are needed other than @cereal@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.cereal) ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.lz4)
            ];
          };
        };
      benchmarks = {
        "bench1" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.lz4)
            (hsPkgs.quicklz)
            (hsPkgs.snappy)
            ];
          };
        };
      };
    }