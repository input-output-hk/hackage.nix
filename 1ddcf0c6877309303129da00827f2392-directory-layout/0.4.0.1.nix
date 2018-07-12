{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "directory-layout";
          version = "0.4.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov";
        homepage = "";
        url = "";
        synopsis = "Declare, construct and verify directory layout";
        description = "Language to express directory layouts";
        buildType = "Simple";
      };
      components = {
        "directory-layout" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.text
          ];
        };
        tests = {
          "basics-suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory-layout
              hsPkgs.HUnit
              hsPkgs.process
              hsPkgs.QuickCheck
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory-layout
              hsPkgs.doctest
              hsPkgs.lens
              hsPkgs.wordexp
            ];
          };
          "layout-laws" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory-layout
              hsPkgs.hspec
              hsPkgs.semigroups
            ];
          };
        };
      };
    }