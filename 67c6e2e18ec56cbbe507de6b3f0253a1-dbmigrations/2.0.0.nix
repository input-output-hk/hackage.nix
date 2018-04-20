{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dbmigrations";
          version = "2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
        author = "Jonathan Daugherty <cygnus@foobox.com>";
        homepage = "";
        url = "";
        synopsis = "An implementation of relational database \"migrations\"";
        description = "A library and program for the creation,\nmanagement, and installation of schema updates\n(called /migrations/) for a relational database. In\nparticular, this package lets the migration author\nexpress explicit dependencies between migrations\nand the management tool automatically installs or\nreverts migrations accordingly, using transactions\nfor safety.\nThis package is written to support a number of\ndifferent databases. For packages that support\nspecific databases using this library, see packages\nnamed \"dbmigrations-BACKEND\". Each package\nprovides an executable \"moo-BACKEND\" for managing\nmigrations. Usage information for the \"moo-\"\nexecutables can be found in \"MOO.TXT\" in this\npackage.\nThis package also includes a conformance test suite\nto ensure that backend implementations respect the\nlibrary's required semantics.";
        buildType = "Simple";
      };
      components = {
        dbmigrations = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
            hsPkgs.time
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.fgl
            hsPkgs.template-haskell
            hsPkgs.yaml-light
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.configurator
            hsPkgs.split
            hsPkgs.HUnit
          ];
        };
        exes = {
          moo = {
            depends  = [
              hsPkgs.base
              hsPkgs.configurator
              hsPkgs.dbmigrations
            ];
          };
        };
        tests = {
          dbmigrations-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.dbmigrations
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.fgl
              hsPkgs.template-haskell
              hsPkgs.yaml-light
              hsPkgs.bytestring
              hsPkgs.MissingH
              hsPkgs.HDBC
              hsPkgs.HUnit
              hsPkgs.process
              hsPkgs.configurator
              hsPkgs.text
              hsPkgs.split
            ];
          };
        };
      };
    }