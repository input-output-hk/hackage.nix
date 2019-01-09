{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { library = true; gold = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xmonad-vanessa"; version = "0.1.1.4"; };
      license = "BSD-3-Clause";
      copyright = "2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/xmonad-vanessa";
      url = "";
      synopsis = "Custom xmonad, which builds with stack or cabal.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.xmonad)
          (hsPkgs.xmonad-contrib)
          (hsPkgs.composition)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.X11)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "xmonad" = { depends = [ (hsPkgs.base) (hsPkgs.xmonad-vanessa) ]; };
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