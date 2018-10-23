{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "peakachu";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yairchu@gmail.com";
      author = "Yair Chuchem";
      homepage = "";
      url = "";
      synopsis = "Experiemental library for composable interactive programs";
      description = "Experiemental library for composable interactive programs.\nGLUT backend included.";
      buildType = "Simple";
    };
    components = {
      "peakachu" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.TypeCompose)
          (hsPkgs.derive)
          (hsPkgs.GLUT)
          (hsPkgs.time)
        ];
      };
    };
  }