{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      sse42 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-bits";
          version = "0.7.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-bits#readme";
        url = "";
        synopsis = "Bit manipulation";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "hw-bits" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hw-int
            hsPkgs.hw-prim
            hsPkgs.hw-string-parse
            hsPkgs.safe
            hsPkgs.vector
          ];
        };
        tests = {
          "hw-bits-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hw-bits
              hsPkgs.hw-prim
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.hw-bits
              hsPkgs.hw-prim
              hsPkgs.vector
            ];
          };
        };
      };
    }