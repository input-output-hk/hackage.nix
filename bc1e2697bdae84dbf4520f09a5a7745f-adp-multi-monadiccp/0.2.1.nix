{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildbenchmark = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "adp-multi-monadiccp";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Maik Riechert, 2013";
        maintainer = "Maik Riechert";
        author = "Maik Riechert";
        homepage = "http://adp-multi.ruhoh.com";
        url = "";
        synopsis = "Subword construction in adp-multi using monadiccp";
        description = "This is an experimental subword construction algorithm\nfor the adp-multi package. It uses the constraint\nprogramming framework monadiccp with the constraint solver\nOvertonFD. It is slower than the built-in algorithm in\nadp-multi and serves research purposes.\nUse it by importing ADP.Multi.Constraint.All instead\nof ADP.Multi.Rewriting.All in your grammar files.";
        buildType = "Simple";
      };
      components = {
        "adp-multi-monadiccp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.adp-multi
            hsPkgs.monadiccp
          ];
        };
        exes = {
          "adp-multi-monadiccp-benchmarks" = {
            depends  = pkgs.lib.optionals (!(!_flags.buildbenchmark)) [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.adp-multi
              hsPkgs.monadiccp
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.mtl
              hsPkgs.criterion
              hsPkgs.deepseq
            ];
          };
        };
        tests = {
          "Test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.adp-multi
              hsPkgs.monadiccp
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.mtl
            ];
          };
        };
      };
    }