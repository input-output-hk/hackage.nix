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
        name = "frag";
        version = "1.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Mun Hon Cheong";
      homepage = "http://haskell.org/haskellwiki/Frag";
      url = "";
      synopsis = "A 3-D First Person Shooter Game";
      description = "A fast and basic reimplementation of the Quake III Arena engine\nin Haskell; supports many Quake III Arena maps.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "frag" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
            (hsPkgs.array)
            (hsPkgs.random)
          ];
        };
      };
    };
  }