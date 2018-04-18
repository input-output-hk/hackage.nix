{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rivet-autoimporter";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dbp@dbpmail.net";
        author = "Daniel Patterson";
        homepage = "http://github.com/dbp/rivet";
        url = "";
        synopsis = "Database migration library; automatic importer.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        exes = {
          rivet-autoimporter = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }