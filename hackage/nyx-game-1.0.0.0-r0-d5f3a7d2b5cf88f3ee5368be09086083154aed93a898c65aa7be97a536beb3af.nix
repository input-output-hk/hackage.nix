{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "nyx-game"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "2019 Gil Mizrahi";
      maintainer = "gilmi@posteo.net";
      author = "Gil Mizrahi";
      homepage = "";
      url = "";
      synopsis = "A bullet-hell game made with SDL2.";
      description = "A purely functional bullet-hell game made with SDL2. Visit https://gilmi.me/nyx for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.optparse-generic)
          (hsPkgs.random)
          (hsPkgs.sdl2)
          (hsPkgs.sdl2-image)
          (hsPkgs.sdl2-mixer)
          (hsPkgs.sdl2-ttf)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "app" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.dlist)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.nyx-game)
            (hsPkgs.optparse-generic)
            (hsPkgs.random)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-image)
            (hsPkgs.sdl2-mixer)
            (hsPkgs.sdl2-ttf)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }