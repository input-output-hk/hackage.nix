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
      specVersion = "1.10";
      identifier = {
        name = "gloss-export";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "timo-a@gmx.ch";
      author = "Timo A";
      homepage = "https://gitlab.com/timo-a/gloss-export#readme";
      url = "";
      synopsis = "Export Gloss pictures to png, bmp, tga, tiff, gif and juicy-pixels-image";
      description = "Please see the README on GitLab at <https://gitlab.com/timo-a/gloss-export#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gloss-rendering)
          (hsPkgs.GLFW-b)
          (hsPkgs.OpenGLRaw)
          (hsPkgs.JuicyPixels)
          (hsPkgs.vector)
          (hsPkgs.GLUT)
        ];
      };
      exes = {
        "gloss-export-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.gloss-export)
          ];
        };
      };
      tests = {
        "gloss-export-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.gloss)
            (hsPkgs.gloss-export)
            (hsPkgs.JuicyPixels)
          ];
        };
      };
    };
  }