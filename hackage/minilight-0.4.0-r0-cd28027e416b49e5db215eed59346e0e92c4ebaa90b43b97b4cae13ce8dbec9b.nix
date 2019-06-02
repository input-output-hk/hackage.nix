{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "minilight"; version = "0.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ioi.joi.koi.loi@gmail.com";
      author = "myuon";
      homepage = "";
      url = "";
      synopsis = "A SDL2-based graphics library, batteries-included.";
      description = "This package provides the wheel for a graphical application or a game.\n\nBasic concepts and features:\n\n- Figure: convenient SDL texture, once created, it can be translated or rotated during rendering.\n- Component: a reusable widget with event handlers, its figures can also be cached.\n- Hot Config Replacement: view components can be constructed by an external yaml file with live preview.\n- built-in components: some common components are predefined. You can define a new component by yourself.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson-diff)
          (hsPkgs.FontyFruity)
          (hsPkgs.base)
          (hsPkgs.caster)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.template-haskell)
          (hsPkgs.unordered-containers)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.sdl2)
          (hsPkgs.sdl2-gfx)
          (hsPkgs.sdl2-image)
          (hsPkgs.sdl2-ttf)
          (hsPkgs.transformers)
          (hsPkgs.trifecta)
          (hsPkgs.uuid)
          (hsPkgs.yaml)
          (hsPkgs.mwc-random)
          (hsPkgs.fsnotify)
          ];
        };
      exes = {
        "button-counter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.minilight)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-ttf)
            (hsPkgs.text)
            ];
          };
        "boids" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.microlens)
            (hsPkgs.minilight)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-ttf)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.minilight)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.trifecta)
            (hsPkgs.vector)
            (hsPkgs.yaml)
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover))
            ];
          };
        };
      };
    }