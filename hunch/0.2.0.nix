{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hunch";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "braga.logan@gmail.com";
        author = "Logan Braga";
        homepage = "https://github.com/loganbraga/hunch";
        url = "";
        synopsis = "CSS-like syntax for file system manipulation.";
        description = "Hunch is a command-line, system-agnostic application that allows quick creation of file system entries with a custom DSL resembling CSS selectors.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hunch = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.optparse-applicative
              hsPkgs.split
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
        tests = {
          hunch-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.optparse-applicative
              hsPkgs.split
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }