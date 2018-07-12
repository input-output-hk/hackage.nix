{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "photoname";
          version = "2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2007, 2008 Dino Morelli";
        maintainer = "Dino Morelli <dino@ui3.info>";
        author = "Dino Morelli";
        homepage = "http://ui3.info/d/proj/photoname.html";
        url = "";
        synopsis = "Rename JPEG photo files based on shoot date";
        description = "Command-line utility for renaming/moving photo image files based on\nEXIF tags. Written in Haskell.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "photoname" = {
            depends  = [
              hsPkgs.base
              hsPkgs.exif
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.parsec
              hsPkgs.time
              hsPkgs.unix
            ];
          };
        };
      };
    }