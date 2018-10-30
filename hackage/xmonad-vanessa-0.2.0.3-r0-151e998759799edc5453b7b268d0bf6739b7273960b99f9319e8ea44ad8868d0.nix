{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "xmonad-vanessa";
        version = "0.2.0.3";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xmonad)
          (hsPkgs.xmonad-contrib)
          (hsPkgs.composition-prelude)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.X11)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      exes = {
        "xmonad" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.xmonad-vanessa)
          ];
        };
        "getkb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.xmonad-vanessa)
          ];
        };
      };
      tests = {
        "xmonad-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.xmonad-vanessa)
            (hsPkgs.hspec)
            (hsPkgs.xmonad)
          ];
        };
      };
    };
  }