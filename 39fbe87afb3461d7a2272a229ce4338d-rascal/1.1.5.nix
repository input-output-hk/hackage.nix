{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rascal";
          version = "1.1.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Sylvain.Soliman@gmail.com";
        author = "Sylvain Soliman";
        homepage = "http://soli.github.io/rascal/";
        url = "";
        synopsis = "A command-line client for Reddit";
        description = "Rascal is a command-line client for Reddit with colors,\nconfigurable sorting, threaded comments, and some day\nmost of Reddit's API available.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "rascal" = {
            depends  = [
              hsPkgs.base
              hsPkgs.curl-aeson
              hsPkgs.curl
              hsPkgs.aeson
              hsPkgs.process
              hsPkgs.ansi-terminal
              hsPkgs.vector
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          "Tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.curl-aeson
              hsPkgs.curl
              hsPkgs.aeson
              hsPkgs.process
              hsPkgs.ansi-terminal
              hsPkgs.vector
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.HUnit
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }