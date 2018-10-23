{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test-interactive = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wild-bind-x11";
        version = "0.2.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/wild-bind";
      url = "";
      synopsis = "X11-specific implementation for WildBind";
      description = "X11-specific implementation for WildBind. See <https://github.com/debug-ito/wild-bind>";
      buildType = "Simple";
    };
    components = {
      "wild-bind-x11" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wild-bind)
          (hsPkgs.text)
          (hsPkgs.X11)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.fold-debounce)
          (hsPkgs.stm)
          (hsPkgs.semigroups)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wild-bind-x11)
            (hsPkgs.wild-bind)
            (hsPkgs.X11)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
            (hsPkgs.time)
            (hsPkgs.async)
          ];
        };
      };
    };
  }