{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "database-migrate";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Mark Hibberd";
        maintainer = "Mark Hibberd <mark@hibberd.id.au>";
        author = "Mark Hibberd <mark@hibberd.id.au>";
        homepage = "https://github.com/markhibberd/database-migrate";
        url = "";
        synopsis = "Database versioning and migration";
        description = "A database versioning and migration library.\n\n/Note/: that this library is under heavy development, currently\nthe PostgreSQL implementation is functional, but\nexpected to change. It is intended that a type safe\nmigration api and command line tools be added to this\nlibrary before it be considered stable.";
        buildType = "Simple";
      };
      components = {
        database-migrate = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.postgresql-simple
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.transformers
          ];
        };
      };
    }