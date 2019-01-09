{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "xosd"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Don Stewart <dons@galois.com>";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "";
      homepage = "http://code.haskell.org/~dons/code/xosd";
      url = "";
      synopsis = "A binding to the X on-screen display";
      description = "A binding to the X on-screen display\n\nxosd is a library for displaying an on-screen display (like the one\non many TVs) on your X display.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; libs = [ (pkgs."xosd") ]; };
      };
    }