{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pem";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-pem";
        url = "";
        synopsis = "Privacy Enhanced Mail (PEM) format reader and writer.";
        description = "Privacy Enhanced Mail (PEM) format reader and writer.";
        buildType = "Simple";
      };
      components = {
        pem = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.cereal
            hsPkgs.base64-bytestring
          ];
        };
        tests = {
          test-pem = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.pem
            ];
          };
        };
      };
    }