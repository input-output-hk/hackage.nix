{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "photoname";
          version = "3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2007-2012 Dino Morelli";
        maintainer = "Dino Morelli <dino@ui3.info>";
        author = "Dino Morelli";
        homepage = "http://ui3.info/d/proj/photoname.html";
        url = "";
        synopsis = "Rename JPEG photo files based on shoot date";
        description = "Command-line utility for renaming/moving photo image files based on\nEXIF tags.";
        buildType = "Simple";
      };
      components = {
        exes = {
          photoname = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
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
        tests = {
          photoname-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.exif
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.regex-posix
              hsPkgs.time
              hsPkgs.unix
            ];
          };
        };
      };
    }