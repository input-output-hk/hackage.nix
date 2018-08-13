{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "caramia";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014 Mikko Juola";
      maintainer = "mikjuo@gmail.com";
      author = "Mikko Juola";
      homepage = "https://github.com/Noeda/caramia/";
      url = "";
      synopsis = "Caramia real-time hardware-accelerated rendering library";
      description = "(See README.md in the repository for a more comprehensive description).\n\nThese are low-level, but Haskelly bindings to OpenGL 3.3.\n\nSee 'giveContext' in \"Caramia.Context\" as this is the\nstarting point for using this library.";
      buildType = "Simple";
    };
    components = {
      "caramia" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.semigroups)
          (hsPkgs.OpenGLRaw)
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."OpenGL");
      };
      tests = {
        "smoke-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.caramia)
            (hsPkgs.sdl2)
            (hsPkgs.text)
          ];
        };
        "memory-info" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.caramia)
            (hsPkgs.sdl2)
          ];
        };
      };
    };
  }