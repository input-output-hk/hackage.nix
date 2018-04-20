{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sqlite-simple";
          version = "0.4.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 MailRank, Inc.,\n(c) 2011-2012 Leon P Smith,\n(c) 2012-2014 Janne Hellsten";
        maintainer = "Janne Hellsten <jjhellst@gmail.com>";
        author = "Bryan O'Sullivan, Leon P Smith, Janne Hellsten";
        homepage = "http://github.com/nurpax/sqlite-simple";
        url = "";
        synopsis = "Mid-Level SQLite client library";
        description = "Mid-level SQLite client library, based on postgresql-simple.\n\nMain documentation (with examples): <docs/Database-SQLite-Simple.html Database.SQLite.Simple>\n\nYou can view the project page at <http://github.com/nurpax/sqlite-simple>\nfor more information.";
        buildType = "Simple";
      };
      components = {
        sqlite-simple = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.blaze-textual
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.direct-sqlite
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.sqlite-simple
              hsPkgs.direct-sqlite
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }