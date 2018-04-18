{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "libmpd";
          version = "0.1.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "Ben Sinclair 2005-2007";
        maintainer = "bsinclai@turing.une.edu.au";
        author = "Ben Sinclair";
        homepage = "http://turing.une.edu.au/~bsinclai/code/libmpd-haskell.html";
        url = "";
        synopsis = "An MPD client library.";
        description = "A client library for MPD, the Music Player Daemon.";
        buildType = "Custom";
      };
      components = {
        libmpd = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.mtl
          ];
        };
      };
    }