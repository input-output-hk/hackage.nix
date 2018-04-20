{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "up";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thomasedingcode@gmail.com";
        author = "Thomas Eding";
        homepage = "";
        url = "";
        synopsis = "Generates pathnames to up directories";
        description = "A command line tool to generate pathnames to facilitate moving upward in a file system.";
        buildType = "Simple";
      };
      components = {
        exes = {
          up = {
            depends  = [
              hsPkgs.base
              hsPkgs.split
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.parsec
            ];
          };
        };
      };
    }