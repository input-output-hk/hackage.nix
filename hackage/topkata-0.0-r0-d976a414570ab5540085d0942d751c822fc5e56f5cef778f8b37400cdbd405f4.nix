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
      specVersion = "0";
      identifier = {
        name = "topkata";
        version = "0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Christoph Bauer <ich@christoph-bauer.net>";
      author = "Christoph Bauer";
      homepage = "";
      url = "";
      synopsis = "";
      description = "OpenGL Arcade Game";
      buildType = "Simple";
    };
    components = {
      exes = {
        "topkata" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.cairo)
            (hsPkgs.OpenAL)
            (hsPkgs.ALUT)
          ];
        };
        "pdflaby" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.cairo)
            (hsPkgs.OpenAL)
            (hsPkgs.ALUT)
          ];
        };
      };
    };
  }