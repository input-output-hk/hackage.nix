{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "grid-proto"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Joe Vargas";
      maintainer = "joevargas92@gmail.com";
      author = "Joe Vargas";
      homepage = "https://github.com/jxv/grid-proto#readme";
      url = "";
      synopsis = "Grid-based prototyping framework";
      description = "Grid-based prototyping framework. Useful for games.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.StateVar)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.linear)
          (hsPkgs.sdl2)
          (hsPkgs.sdl2-fps)
          (hsPkgs.sdl2-gfx)
          (hsPkgs.sdl2-mixer)
          (hsPkgs.sdl2-ttf)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "arrows-example" = {
          depends = [
            (hsPkgs.StateVar)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.grid-proto)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-fps)
            (hsPkgs.sdl2-gfx)
            (hsPkgs.sdl2-mixer)
            (hsPkgs.sdl2-ttf)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        "board-example" = {
          depends = [
            (hsPkgs.StateVar)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.grid-proto)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-fps)
            (hsPkgs.sdl2-gfx)
            (hsPkgs.sdl2-mixer)
            (hsPkgs.sdl2-ttf)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        "controller-example" = {
          depends = [
            (hsPkgs.StateVar)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.grid-proto)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-fps)
            (hsPkgs.sdl2-gfx)
            (hsPkgs.sdl2-mixer)
            (hsPkgs.sdl2-ttf)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        "text-example" = {
          depends = [
            (hsPkgs.StateVar)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.grid-proto)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-fps)
            (hsPkgs.sdl2-gfx)
            (hsPkgs.sdl2-mixer)
            (hsPkgs.sdl2-ttf)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }