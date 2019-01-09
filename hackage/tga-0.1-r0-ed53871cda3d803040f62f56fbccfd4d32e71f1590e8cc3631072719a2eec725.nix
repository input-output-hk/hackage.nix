{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "tga"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tillmann.Vogt@rwth-aachen.de";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Reading and writing of tga image files";
      description = "TGA is a very simple format (like Bitmap), but in contrast to Bitmap also stores an alpha channel for transparency. Although tga might be outdated it had to be implemented because stb-image only supports reading. This version supports raw RGB24 and RGB32 data without palettes or run length encoding";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
      };
    }