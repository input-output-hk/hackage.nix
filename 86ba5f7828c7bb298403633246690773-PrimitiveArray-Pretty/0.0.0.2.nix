{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "PrimitiveArray-Pretty";
          version = "0.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2016";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2016";
        homepage = "https://github.com/choener/PrimitiveArray-Pretty";
        url = "";
        synopsis = "Pretty-printing for primitive arrays";
        description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nA Pretty-printer for Primitive Arrays.\n\nThe idea is not so much to provide pretty-printing for single\narrays, but rather to allow for simple prettyfication of\ntypical array data. In particular we want to have simplified\npretty-printing of Inside/Outside combinations of arrays.";
        buildType = "Simple";
      };
      components = {
        "PrimitiveArray-Pretty" = {
          depends  = [
            hsPkgs.base
            hsPkgs.diagrams
            hsPkgs.diagrams-contrib
            hsPkgs.diagrams-lib
            hsPkgs.diagrams-svg
            hsPkgs.diagrams-postscript
            hsPkgs.filepath
            hsPkgs.log-domain
            hsPkgs.split
          ];
        };
        tests = {
          "properties" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
              hsPkgs.PrimitiveArray-Pretty
            ];
          };
        };
      };
    }