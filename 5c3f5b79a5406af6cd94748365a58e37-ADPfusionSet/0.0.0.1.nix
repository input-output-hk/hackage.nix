{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
      debug = false;
      debugoutput = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "ADPfusionSet";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2016-2017";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2016-2017";
        homepage = "https://github.com/choener/ADPfusionSet";
        url = "";
        synopsis = "Dynamic programming for Set data structures.";
        description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nExtensions of ADPfusion for set-(like) data structures.\n";
        buildType = "Simple";
      };
      components = {
        ADPfusionSet = {
          depends  = [
            hsPkgs.base
            hsPkgs.bits
            hsPkgs.containers
            hsPkgs.mmorph
            hsPkgs.mtl
            hsPkgs.primitive
            hsPkgs.QuickCheck
            hsPkgs.strict
            hsPkgs.template-haskell
            hsPkgs.th-orphans
            hsPkgs.transformers
            hsPkgs.tuple
            hsPkgs.vector
            hsPkgs.ADPfusion
            hsPkgs.DPutils
            hsPkgs.OrderedBits
            hsPkgs.PrimitiveArray
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-th
              hsPkgs.ADPfusionSet
            ];
          };
        };
      };
    }