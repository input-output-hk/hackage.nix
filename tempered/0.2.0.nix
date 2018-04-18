{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tempered";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Chris Penner";
        maintainer = "christopher.penner@gmail.com";
        author = "Chris Penner";
        homepage = "https://github.com/ChrisPenner/tempered#readme";
        url = "";
        synopsis = "A dead-simple shell interpolation templating utility";
        description = "";
        buildType = "Simple";
      };
      components = {
        tempered = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.yaml
          ];
        };
        exes = {
          tempered = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.tempered
              hsPkgs.containers
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          tempered-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tempered
            ];
          };
        };
      };
    }