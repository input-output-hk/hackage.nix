{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ktx";
          version = "0.2";
        };
        license = "MIT";
        copyright = "2015 David McFarland";
        maintainer = "David McFarland <corngood@gmail.com>";
        author = "David McFarland <corngood@gmail.com>";
        homepage = "https://github.com/corngood/ktx";
        url = "";
        synopsis = "A binding for libktx from Khronos";
        description = "Allows ktx format textures to be loaded into an OpenGL context.\nlibktx is included as a submodule and compiled with 'c-sources'.";
        buildType = "Simple";
      };
      components = {
        "ktx" = {
          depends  = [
            hsPkgs.base
            hsPkgs.OpenGL
            hsPkgs.bytestring
          ];
          pkgconfig = [
            pkgconfPkgs.glew
            pkgconfPkgs.egl
          ];
        };
      };
    }