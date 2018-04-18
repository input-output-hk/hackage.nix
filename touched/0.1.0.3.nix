{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "touched";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015 to Alex Crough";
        maintainer = "alex@crough.org";
        author = "Alex Crough";
        homepage = "";
        url = "";
        synopsis = "Library (and cli) to execute a procedure on file change.";
        description = "A small, IO-heavy library that monitors files for changes and runs either a system shell command or a Haskell `IO ()` action.";
        buildType = "Simple";
      };
      components = {
        touched = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.time
          ];
        };
        exes = {
          touched = {
            depends  = [
              hsPkgs.base
              hsPkgs.touched
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }