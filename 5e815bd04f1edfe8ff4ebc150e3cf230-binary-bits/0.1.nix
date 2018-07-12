{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "binary-bits";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Kolmodin <kolmodin@gmail.com>";
        author = "Lennart Kolmodin <kolmodin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Bit parsing/writing on top of binary.";
        description = "Bit parsing/writing on top of binary. Provides functions to\nread and write bits to and from 8\\/16\\/32\\/64 words.";
        buildType = "Simple";
      };
      components = {
        "binary-bits" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
          ];
        };
        tests = {
          "qc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }