{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "xmonad-volume";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vanessa.mchale@iohk.io";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/xmonad-volume#readme";
      url = "";
      synopsis = "XMonad volume controls";
      description = "XMonad volume controls using ALSA";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.alsa-mixer)
          (hsPkgs.xmonad)
          (hsPkgs.X11)
          (hsPkgs.containers)
          (hsPkgs.composition-prelude)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.transformers);
      };
    };
  }