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
        name = "Michelangelo";
        version = "0.2.4.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jonatanhsundqvist@gmail.com";
      author = "Jonatan H Sundqvist";
      homepage = "";
      url = "";
      synopsis = "OpenGL for dummies";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.bytestring)
          (hsPkgs.linear)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUtil)
          (hsPkgs.OpenGLRaw)
          (hsPkgs.containers)
          (hsPkgs.WaveFront)
        ];
      };
    };
  }