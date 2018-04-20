{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pptable";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2016 Guru Devanla";
        maintainer = "grdvnl@gmail.com";
        author = "Guru Devanla";
        homepage = "https://github.com/gdevanla/pptable#readme";
        url = "";
        synopsis = "Pretty Print containers in a tabular format";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        pptable = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.boxes
            hsPkgs.vector
            hsPkgs.generic-deriving
          ];
        };
        tests = {
          pptable-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.pptable
              hsPkgs.tasty
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.boxes
            ];
          };
        };
      };
    }