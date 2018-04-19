{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "boomange";
          version = "0.1.3.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2013-2015 Marcelo Garlet Millani";
        maintainer = "marcelogmillani@gmail.com";
        author = "Marcelo Garlet Millani";
        homepage = "";
        url = "";
        synopsis = "A Bookmarks manager with a HTML generator";
        description = "In order to allow a unified and customized bookmarks file, boomange generates a HTML file with an user's bookmarks.";
        buildType = "Simple";
      };
      components = {
        exes = {
          boomange = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.descrilo
              hsPkgs.containers
              hsPkgs.simtreelo
            ];
          };
        };
      };
    }