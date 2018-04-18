{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "data-store";
          version = "0.3.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "the.palmik+maintainer@gmail.com";
        author = "Petr Pilař";
        homepage = "https://github.com/Palmik/data-store";
        url = "";
        synopsis = "Type safe, in-memory dictionary with multidimensional keys.";
        description = "Type safe, in-memory dictionary with multidimensional keys.\nSimilar to ixset, higgsset, tables. But offers: type safe interface,\nauto-increment dimensions, specifying the relationships between the key dimension and the elements (one-one, one-many, many-one, many-many), performance.";
        buildType = "Simple";
      };
      components = {
        data-store = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.cereal
            hsPkgs.deepseq
            hsPkgs.safecopy
          ];
        };
        tests = {
          data-store-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.lens
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.cereal
              hsPkgs.deepseq
              hsPkgs.safecopy
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          data-store-benchmark-01 = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.lens
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.cereal
              hsPkgs.deepseq
              hsPkgs.safecopy
              hsPkgs.unordered-containers
              hsPkgs.tagged
              hsPkgs.mtl
              hsPkgs.ixset
              hsPkgs.tables
              hsPkgs.lens
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.random
            ];
          };
        };
      };
    }