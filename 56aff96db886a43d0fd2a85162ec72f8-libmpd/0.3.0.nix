{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "libmpd";
          version = "0.3.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "Ben Sinclair 2005-2008";
        maintainer = "bsinclai@turing.une.edu.au";
        author = "Ben Sinclair";
        homepage = "http://turing.une.edu.au/~bsinclai/code/libmpd-haskell.html";
        url = "";
        synopsis = "An MPD client library.";
        description = "A client library for MPD, the Music Player Daemon\n(<http://www.musicpd.org/>).";
        buildType = "Simple";
      };
      components = {
        "libmpd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.utf8-string
          ];
        };
      };
    }