{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "datalog";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tristan@nochair.net";
        author = "Tristan Ravitch";
        homepage = "";
        url = "";
        synopsis = "An implementation of datalog in Haskell";
        description = "This is an implementation of datalog in pure Haskell.\nIt is implemented as a library and can be used from within\nany Haskell application.  As a consequence, it supports both\nstandard Datalog operations and arbitrary predicates written\nin Haskell.";
        buildType = "Simple";
      };
      components = {
        datalog = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.exceptions
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
        exes = {
          datalog-repl = {
            depends  = [
              hsPkgs.base
              hsPkgs.datalog
              hsPkgs.containers
              hsPkgs.exceptions
              hsPkgs.hashable
              hsPkgs.haskeline
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
        tests = {
          NQueensTest = {
            depends  = [
              hsPkgs.datalog
              hsPkgs.base
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
          AncestorTest = {
            depends  = [
              hsPkgs.datalog
              hsPkgs.base
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
          WorksForTest = {
            depends  = [
              hsPkgs.datalog
              hsPkgs.base
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }