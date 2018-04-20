{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Gifcurry";
          version = "2.1.1.0";
        };
        license = "Apache-2.0";
        copyright = "(C) 2016 David Lettier";
        maintainer = "Lettier";
        author = "Lettier";
        homepage = "https://github.com/lettier/gifcurry";
        url = "";
        synopsis = "GIF creation utility.";
        description = "Create animated GIFs, optionally overlaid with text, from video files.";
        buildType = "Simple";
      };
      components = {
        Gifcurry = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.temporary
            hsPkgs.directory
            hsPkgs.text
            hsPkgs.filepath
          ];
        };
        exes = {
          gifcurry_gui = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk3
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.text
              hsPkgs.filepath
            ];
          };
          gifcurry_cli = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.cmdargs
              hsPkgs.text
              hsPkgs.filepath
            ];
          };
        };
      };
    }