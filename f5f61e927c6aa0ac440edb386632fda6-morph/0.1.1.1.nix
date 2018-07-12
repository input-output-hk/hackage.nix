{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "morph";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tho.feron@gmail.com";
        author = "Thomas Feron";
        homepage = "";
        url = "";
        synopsis = "A simple database migrator for PostgreSQL";
        description = "Morph is a tool to migrate your PostgreSQL databases\nsafely which supports rollbacks.";
        buildType = "Simple";
      };
      components = {
        "morph" = {
          depends  = [
            hsPkgs.base
            hsPkgs.optparse-applicative
            hsPkgs.aeson
            hsPkgs.yaml
            hsPkgs.postgresql-simple
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        exes = {
          "morph" = {
            depends  = [
              hsPkgs.base
              hsPkgs.morph
            ];
          };
        };
      };
    }