{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabal-mon";
          version = "1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "iavor.diatchki@gmail.com";
        author = "Iavor S. Diatchki";
        homepage = "";
        url = "";
        synopsis = "A monitor for cabal builds";
        description = "A vty-based wrapper around the `fswatch` utility,\nwhich makes it easy to monitor parallel Cabal builds.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cabal-mon = {
            depends  = [
              hsPkgs.base
              hsPkgs.vty
              hsPkgs.simple-get-opt
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
            ];
          };
        };
      };
    }