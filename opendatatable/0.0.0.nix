{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "opendatatable";
          version = "0.0.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "fabian.bergmark@gmail.com";
        author = "Fabian Bergmark";
        homepage = "https://github.com/fabianbergmark/OpenDataTable";
        url = "";
        synopsis = "A library for working with Open Data Tables";
        description = "Open Data Table definition, parser and pickler.";
        buildType = "Simple";
      };
      components = {
        opendatatable = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.th-lift
            hsPkgs.hxt
          ];
        };
      };
    }