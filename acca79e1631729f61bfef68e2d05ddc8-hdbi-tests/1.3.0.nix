{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hdbi-tests";
          version = "1.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "s9gf4ult@gmail.com";
        author = "Aleksey Uymanov";
        homepage = "https://github.com/s9gf4ult/hdbi-tests";
        url = "";
        synopsis = "test suite for testing HDBI";
        description = "The set of database-independent tests for\ntesting the common interface implementation by drivers.";
        buildType = "Simple";
      };
      components = {
        hdbi-tests = {
          depends  = [
            hsPkgs.base
            hsPkgs.Decimal
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hdbi
            hsPkgs.ieee754
            hsPkgs.quickcheck-assertions
            hsPkgs.quickcheck-instances
            hsPkgs.stm
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-quickcheck2
            hsPkgs.text
            hsPkgs.time
            hsPkgs.uuid
          ];
        };
      };
    }