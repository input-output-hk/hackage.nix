{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "netwire-vinylglfw-examples";
          version = "0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "runKleisli@openmailbox.org";
        author = "Rand Kleisli";
        homepage = "";
        url = "";
        synopsis = "Netwire/GLFW/VinylGL input handling demo";
        description = "Port of netwire-input-glfw example to VinylGL & GLSL 1.50. Uses Netwire 5 and Vinyl >= 0.4. NetVinylGLFW is a previous combination of Netwire, VinylGL, & GLFW, but its Netwire and Vinyl versions are outdated as of 2016. The combination with STM that it suggests is embraced by netwire-input-glfw.";
        buildType = "Simple";
      };
      components = {
        exes = {
          netwire-vinylglfw-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.vinyl
              hsPkgs.netwire
              hsPkgs.netwire-input
              hsPkgs.netwire-input-glfw
              hsPkgs.OpenGL
              hsPkgs.GLFW-b
              hsPkgs.linear
              hsPkgs.GLUtil
              hsPkgs.vinyl-gl
              hsPkgs.transformers
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }