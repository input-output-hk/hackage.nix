{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      author-test = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "boring-window-switcher";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/boring-window-switcher";
      url = "";
      synopsis = "A boring window switcher.";
      description = "A boring window switcher. See README.md";
      buildType = "Simple";
    };
    components = {
      "boring-window-switcher" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.X11)
          (hsPkgs.transformers)
          (hsPkgs.gtk)
        ];
      };
      exes = {
        "boring-window-switcher" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.boring-window-switcher)
          ];
        };
      };
      tests = {
        "author-spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.boring-window-switcher)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }