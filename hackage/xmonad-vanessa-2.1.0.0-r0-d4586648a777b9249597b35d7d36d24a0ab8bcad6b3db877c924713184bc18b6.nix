{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xmonad-vanessa"; version = "2.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/xmonad-vanessa";
      url = "";
      synopsis = "Custom xmonad, which builds with stack or cabal.";
      description = "Custom xmonad example, plus several bits of functionality for managing media within XMonad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.xmonad)
          (hsPkgs.composition-prelude)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.X11)
          (hsPkgs.alsa-mixer)
          ];
        };
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.xmonad-vanessa)
            (hsPkgs.xmonad)
            (hsPkgs.xmonad-contrib)
            (hsPkgs.xmonad-spotify)
            (hsPkgs.xmonad-volume)
            (hsPkgs.containers)
            ];
          };
        "getkb" = { depends = [ (hsPkgs.base) (hsPkgs.xmonad-vanessa) ]; };
        };
      tests = {
        "xmonad-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.xmonad-vanessa)
            (hsPkgs.hspec)
            (hsPkgs.xmonad)
            ];
          };
        };
      };
    }