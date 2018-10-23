{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "photoname";
        version = "3.1";
      };
      license = "BSD-3-Clause";
      copyright = "2007-2015 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://hub.darcs.net/dino/photoname";
      url = "";
      synopsis = "Rename photo image files based on EXIF shoot date";
      description = "Command-line utility for renaming/moving photo image files based on\nEXIF tags.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "photoname" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.exif)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.time)
            (hsPkgs.unix)
          ];
        };
      };
      tests = {
        "photoname-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.exif)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regex-posix)
            (hsPkgs.time)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }