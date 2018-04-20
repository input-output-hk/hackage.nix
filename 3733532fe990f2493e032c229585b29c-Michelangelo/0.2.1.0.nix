{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Michelangelo";
          version = "0.2.1.0";
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
        Michelangelo = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.bytestring
            hsPkgs.linear
            hsPkgs.OpenGL
            hsPkgs.GLUtil
            hsPkgs.OpenGLRaw
            hsPkgs.containers
            hsPkgs.WaveFront
          ];
        };
      };
    }