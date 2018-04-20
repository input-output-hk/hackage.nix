{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "disjoint-containers";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/disjoint-containers#readme";
        url = "";
        synopsis = "Disjoint containers";
        description = "Disjoint containers";
        buildType = "Simple";
      };
      components = {
        disjoint-containers = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.aeson
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.disjoint-containers
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-classes
              hsPkgs.aeson
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.disjoint-containers
              hsPkgs.doctest
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }