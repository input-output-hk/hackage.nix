{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "SQLDeps";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013 Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@agrafix.net>";
        author = "Alexander Thiemann";
        homepage = "";
        url = "";
        synopsis = "Calculate db-data dependencies of functions";
        description = "Rerun computations that depend on SQL-select statements";
        buildType = "Simple";
      };
      components = {
        "SQLDeps" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.HDBC
            hsPkgs.HDBC-sqlite3
            hsPkgs.hashable
            hsPkgs.unordered-containers
          ];
        };
      };
    }