{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "smallcheck-series";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "j@dannynavarro.net";
        author = "Danny Navarro";
        homepage = "https://github.com/jdnavarro/smallcheck-series";
        url = "";
        synopsis = "Extra SmallCheck series";
        description = "Orphan @Serial@ instances and utilities to create custom @Series@ for\ncommon types.";
        buildType = "Simple";
      };
      components = {
        smallcheck-series = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.smallcheck
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.doctest
            ];
          };
        };
      };
    }