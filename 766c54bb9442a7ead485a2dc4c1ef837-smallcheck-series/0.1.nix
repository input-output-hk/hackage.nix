{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "smallcheck-series";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "j@dannynavarro.net";
        author = "Danny Navarro";
        homepage = "https://github.com/jdnavarro/smallcheck-series";
        url = "";
        synopsis = "Extra series for smallcheck";
        description = "Utilities for creating @SmallCheck@ @Series@ and orphan @Serial@\ninstances for frequently used types coming with GHC core libraries.";
        buildType = "Simple";
      };
      components = {
        "smallcheck-series" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.smallcheck
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.doctest
            ];
          };
        };
      };
    }