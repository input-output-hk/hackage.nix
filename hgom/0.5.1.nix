{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "hgom";
          version = "0.5.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Paul Brauner 2009\n(c) Emilie Balland 2009\n(c) INRIA 2009";
        maintainer = "Paul Brauner <paul.brauner@inria.fr>";
        author = "Paul Brauner and Emilie Balland";
        homepage = "http://www.loria.fr/~brauner";
        url = "";
        synopsis = "An haskell port of the java version of gom";
        description = "The executable hgom takes a module consisting of several abstract datatypes\ndeclarations as an input and ouputs java classes. It is meant to mimic the java\nversion of Gom: <http://tom.loria.fr/wiki/index.php5/Documentation:Gom>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hgom = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.wl-pprint
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.filepath
            ] ++ optionals _flags.test [
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.Glob
              hsPkgs.HUnit
              hsPkgs.process
            ];
          };
        };
      };
    }