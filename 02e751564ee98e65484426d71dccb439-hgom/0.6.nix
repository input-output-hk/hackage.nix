{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "hgom";
          version = "0.6";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Paul Brauner 2009\n(c) Emilie Balland 2009\n(c) INRIA 2009";
        maintainer = "Paul Brauner <paul.brauner@inria.fr>";
        author = "Paul Brauner and Emilie Balland";
        homepage = "http://github.com/polux/hgom";
        url = "";
        synopsis = "An haskell port of the java version of gom";
        description = "The executable hgom takes a module consisting of several abstract datatypes\ndeclarations as an input and ouputs java classes. It is meant to mimic the java\nversion of Gom: <http://tom.loria.fr/wiki/index.php5/Documentation:Gom>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hgom" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.wl-pprint
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.filepath
            ] ++ pkgs.lib.optionals _flags.test [
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