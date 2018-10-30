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
      specVersion = "1.8";
      identifier = {
        name = "SimpleGL";
        version = "0.9.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "";
      url = "";
      synopsis = "A Simple Graphics Library from the SimpleH framework.";
      description = "synopsis: A Simple Graphics Library from the SimpleH framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.SimpleH)
          (hsPkgs.GLFW)
          (hsPkgs.OpenGL)
          (hsPkgs.JuicyPixels)
          (hsPkgs.vector)
        ];
      };
    };
  }