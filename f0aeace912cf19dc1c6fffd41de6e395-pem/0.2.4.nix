{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pem";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-pem";
        url = "";
        synopsis = "Privacy Enhanced Mail (PEM) format reader and writer.";
        description = "Privacy Enhanced Mail (PEM) format reader and writer. long description";
        buildType = "Simple";
      };
      components = {
        pem = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.basement
            hsPkgs.memory
          ];
        };
        tests = {
          test-pem = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.pem
            ];
          };
        };
      };
    }