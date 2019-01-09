{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "WaveFront"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "jonatanhsundqvist@gmail.com";
      author = "Jonatan H Sundqvist";
      homepage = "";
      url = "";
      synopsis = "Parsers and utilities for the OBJ WaveFront 3D model format";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUtil)
          (hsPkgs.linear)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          ];
        };
      };
    }