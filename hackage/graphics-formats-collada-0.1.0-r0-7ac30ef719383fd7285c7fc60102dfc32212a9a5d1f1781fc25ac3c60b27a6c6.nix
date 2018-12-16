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
      specVersion = "1.6";
      identifier = {
        name = "graphics-formats-collada";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lrpalmer@gmail.com";
      author = "Luke Palmer";
      homepage = "http://github.com/luqui/collada";
      url = "";
      synopsis = "Load 3D geometry in the COLLADA format";
      description = "Early in development.  Should be able to load anything that Google SketchUp\nproduces -- other than that, all bets are off.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.ghc-prim)
          (hsPkgs.hxt)
          (hsPkgs.OpenGL)
          (hsPkgs.stb-image)
          (hsPkgs.bitmap-opengl)
        ];
      };
    };
  }