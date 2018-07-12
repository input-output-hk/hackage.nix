{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "word24";
          version = "2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Winterland, John W. Lato";
        author = "Winterland, John W. Lato";
        homepage = "https://github.com/winterland1989/word24";
        url = "";
        synopsis = "24-bit word and int types for GHC";
        description = "24-bit Word and Int data types.";
        buildType = "Simple";
      };
      components = {
        "word24" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
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