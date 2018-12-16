{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "photoname";
        version = "2.2";
      };
      license = "BSD-3-Clause";
      copyright = "2007-2009 Dino Morelli";
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
          depends = [
            (hsPkgs.base)
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
    };
  }