{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "language-sqlite";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010 Dan Knapp";
        maintainer = "dankna@gmail.com";
        author = "Dan Knapp";
        homepage = "http://dankna.com/software/";
        url = "";
        synopsis = "Full parser and generator for SQL as implemented by SQLite3";
        description = "This is a full parser and generator for SQL as implemented by SQLite3.\nIt is well-typed in the sense that it is possible to construct an\nabstract syntax tree if and only if it corresponds to valid SQL.";
        buildType = "Simple";
      };
      components = {
        language-sqlite = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.utf8-string
          ];
        };
      };
    }