{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rivet-adaptor-postgresql";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dbp@dbpmail.net";
        author = "Daniel Patterson";
        homepage = "http://github.com/name/project";
        url = "";
        synopsis = "Rivet migration library postgresql backend";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "rivet-adaptor-postgresql" = {
          depends  = [
            hsPkgs.base
            hsPkgs.postgresql-simple
            hsPkgs.text
            hsPkgs.rivet-core
          ];
        };
      };
    }