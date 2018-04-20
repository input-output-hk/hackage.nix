{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "crypto-cipher-types";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-crypto-cipher";
        url = "";
        synopsis = "Generic cryptography cipher types";
        description = "Generic cryptography cipher types";
        buildType = "Simple";
      };
      components = {
        crypto-cipher-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.securemem
          ];
        };
        tests = {
          test-crypto-cipher-types = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.byteable
              hsPkgs.crypto-cipher-types
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }