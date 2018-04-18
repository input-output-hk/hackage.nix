{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-sqlite3";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes";
        author = "Maurício C. Antunes";
        homepage = "http://bitbucket.org/mauricio/bindings";
        url = "";
        synopsis = "Check bindings-common package for directions.";
        description = "";
        buildType = "Simple";
      };
      components = {
        bindings-sqlite3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-common
          ];
        };
      };
    }