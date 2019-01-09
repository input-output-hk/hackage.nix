{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "GPipe-Examples"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010 Kree Cole-McLaughlin";
      maintainer = "kree.colemclaughlin@gmail.com";
      author = "Kree Cole-McLaughlin";
      homepage = "";
      url = "";
      synopsis = "Examples for the GPipes package";
      description = "A set of examples with increasing complexity";
      buildType = "Simple";
      };
    components = {
      exes = {
        "01_green_triangle" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.Vec)
            (hsPkgs.Vec-Transform)
            (hsPkgs.GPipe)
            (hsPkgs.GPipe-TextureLoad)
            (hsPkgs.GLUT)
            ];
          };
        "02_triangle_texture" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.Vec)
            (hsPkgs.Vec-Transform)
            (hsPkgs.GPipe)
            (hsPkgs.GPipe-TextureLoad)
            (hsPkgs.GLUT)
            ];
          };
        "03_green_sphere" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.Vec)
            (hsPkgs.Vec-Transform)
            (hsPkgs.GPipe)
            (hsPkgs.GPipe-TextureLoad)
            (hsPkgs.GLUT)
            ];
          };
        "04_brass_sphere" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.Vec)
            (hsPkgs.Vec-Transform)
            (hsPkgs.GPipe)
            (hsPkgs.GPipe-TextureLoad)
            (hsPkgs.GLUT)
            ];
          };
        };
      };
    }