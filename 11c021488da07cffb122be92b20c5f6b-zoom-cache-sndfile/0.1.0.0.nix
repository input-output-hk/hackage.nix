{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "zoom-cache-sndfile";
          version = "0.1.0.0";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Conrad Parker <conrad@metadecks.org>";
        author = "Conrad Parker";
        homepage = "";
        url = "";
        synopsis = "Tools for generating zoom-cache-pcm files";
        description = "zoom-cache-sndfile provides tools for encoding and dumping zoom-cache-pcm files.\nSee the zoom-cache-pcm and zoom-cache packages for more information about\nzoom-cache files.";
        buildType = "Simple";
      };
      components = {
        exes = {
          zoom-cache-sndfile = {
            depends  = [
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.hsndfile
              hsPkgs.hsndfile-vector
              hsPkgs.mtl
              hsPkgs.ui-command
              hsPkgs.vector
              hsPkgs.zoom-cache
              hsPkgs.zoom-cache-pcm
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }