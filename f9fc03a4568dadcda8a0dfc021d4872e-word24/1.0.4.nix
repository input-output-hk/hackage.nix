{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "word24";
          version = "1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John W. Lato, jwlato@gmail.com";
        author = "John W. Lato, jwlato@gmail.com";
        homepage = "http://www.tiresiaspress.us/haskell/word24";
        url = "";
        synopsis = "24-bit word and int types for GHC";
        description = "24-bit Word and Int data types.";
        buildType = "Simple";
      };
      components = {
        "word24" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.word24
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
        benchmarks = {
          "bench24" = {
            depends  = [
              hsPkgs.base
              hsPkgs.word24
              hsPkgs.criterion
              hsPkgs.deepseq
            ];
          };
        };
      };
    }