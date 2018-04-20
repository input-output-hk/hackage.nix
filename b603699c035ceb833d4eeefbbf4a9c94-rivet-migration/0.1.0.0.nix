{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rivet-migration";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dbp@dbpmail.net";
        author = "Daniel Patterson";
        homepage = "https://github.com/dbp/rivet";
        url = "";
        synopsis = "Postgresql migration support for project management tool.";
        description = "";
        buildType = "Simple";
      };
      components = {
        rivet-migration = {
          depends  = [
            hsPkgs.base
            hsPkgs.postgresql-simple
            hsPkgs.text
          ];
        };
      };
    }