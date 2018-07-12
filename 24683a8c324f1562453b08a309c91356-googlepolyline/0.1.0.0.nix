{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "googlepolyline";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@lorne.me";
        author = "Lorne Applebaum";
        homepage = "https://github.com/lornap/googlepolyline";
        url = "";
        synopsis = "Google Polyline Encoder/Decoder";
        description = "Encoding and decoding functions for Google Maps' polyline format.";
        buildType = "Simple";
      };
      components = {
        "googlepolyline" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
        tests = {
          "test-googlepolyline" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework
            ];
          };
        };
      };
    }