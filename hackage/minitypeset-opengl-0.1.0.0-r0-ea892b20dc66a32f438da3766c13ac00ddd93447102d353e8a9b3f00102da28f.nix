{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "minitypeset-opengl"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2019 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://moire.be/haskell/";
      url = "";
      synopsis = "Layout and render text with TrueType fonts using OpenGL";
      description = "This is a library to render text with OpenGL.\nTrueType (and OpenType) fonts are supported; glyph rendering\nis via @stb_truetype@. The rendered glyphs are stored in\nOpenGL textures (built up lazily).\nA simple typesetting\\/layouting engine is included.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.OpenGL)
          (hsPkgs.stb-truetype)
          ];
        };
      };
    }