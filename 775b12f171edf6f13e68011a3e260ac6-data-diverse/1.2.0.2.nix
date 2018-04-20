{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-diverse";
          version = "1.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/data-diverse#readme";
        url = "";
        synopsis = "Extensible records and polymorphic variants.";
        description = "\"Data.Diverse.Many\" is an extensible record for any size encoded efficiently as (Seq Any).\n\"Data.Diverse.Which\" is a polymorphic variant of possibilities encoded as (Int, Any).\nProvides getters, setters, projection, injection, folds, and catamorphisms;\naccessed by type, index or label.\nRefer to [ManySpec.hs](https://github.com/louispan/data-diverse/blob/master/test/Data/Diverse/ManySpec.hs) and [WhichSpec.hs](https://github.com/louispan/data-diverse/blob/master/test/Data/Diverse/WhichSpec.hs) for example usages.\nIso, Lens and Prisms are provided in [data-diverse-lens](http://hackage.haskell.org/package/data-diverse-lens)";
        buildType = "Simple";
      };
      components = {
        data-diverse = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.tagged
          ] ++ [ hsPkgs.containers ];
        };
        tests = {
          data-diverse-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-diverse
              hsPkgs.hspec
              hsPkgs.tagged
            ];
          };
        };
        benchmarks = {
          data-diverse-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-diverse
              hsPkgs.criterion
            ];
          };
        };
      };
    }