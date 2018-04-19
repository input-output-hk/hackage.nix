{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "config-select";
          version = "0.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Timothy Hobbs <timothyhobbs@seznam.cz>";
        author = "Timothy Hobbs";
        homepage = "";
        url = "";
        synopsis = "A small program for swapping out dot files.";
        description = "Manage multiple configuration profiles for the same program.  Swap out dot files quickly.";
        buildType = "Simple";
      };
      components = {
        exes = {
          config-select = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.directory
              hsPkgs.vty-menu
              hsPkgs.filepath
            ];
          };
        };
      };
    }