{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "roc-cluster";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Hexresearch Team";
        maintainer = "ncrashed@gmail.com";
        author = "Anton Gushcha";
        homepage = "https://github.com/hexresearch/roc-cluster#readme";
        url = "";
        synopsis = "ROC online clustering algorithm";
        description = "Provides generic implementation for ROC online clustering algorithm.";
        buildType = "Simple";
      };
      components = {
        roc-cluster = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
        tests = {
          roc-cluster-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.roc-cluster
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
        };
      };
    }