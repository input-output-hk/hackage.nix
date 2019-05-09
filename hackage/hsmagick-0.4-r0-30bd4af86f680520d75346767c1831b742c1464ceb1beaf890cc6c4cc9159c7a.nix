{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "hsmagick"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) Tim Chevalier, 2008";
      maintainer = "chevalier@alum.wellesley.edu";
      author = "Tim Chevalier";
      homepage = "http://community.haskell.org/~tim";
      url = "";
      synopsis = "FFI bindings for the GraphicsMagick library";
      description = "FFI bindings for the GraphicsMagick library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.pretty)
          (hsPkgs.process)
          ];
        libs = [
          (pkgs."tiff")
          (pkgs."jasper")
          (pkgs."jpeg")
          (pkgs."png")
          (pkgs."wmflite")
          (pkgs."bz2")
          (pkgs."z")
          (pkgs."m")
          (pkgs."pthread")
          ];
        pkgconfig = [
          (pkgconfPkgs."GraphicsMagick")
          (pkgconfPkgs."lcms")
          (pkgconfPkgs."freetype2")
          (pkgconfPkgs."libxml-2.0")
          ];
        };
      };
    }