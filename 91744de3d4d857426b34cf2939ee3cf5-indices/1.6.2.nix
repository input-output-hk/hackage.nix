{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "indices";
          version = "1.6.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "eleventynine@gmail.com";
        author = "Mike Ledger";
        homepage = "";
        url = "";
        synopsis = "Multi-dimensional statically bounded indices.";
        description = "Multi-dimensional statically bounded indices, with operations that unroll.";
        buildType = "Simple";
      };
      components = {
        indices = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagged
            hsPkgs.template-haskell
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.indices
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          unroll = {
            depends  = [
              hsPkgs.base
              hsPkgs.indices
              hsPkgs.criterion
            ];
          };
        };
      };
    }