{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "xfconf"; version = "4.8.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "john.obbele@gmail.com";
      author = "John Obbele";
      homepage = "http://patch-tag.com/r/obbele/xfconf/home";
      url = "";
      synopsis = "FFI bindings to xfconf";
      description = "Xfconf is a simple client-server configuration storage and query\nsystem build on top of glib and used by XFCE.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.glib)
          ] ++ (pkgs.lib).optionals (flags.buildtests) [
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          ];
        pkgconfig = [ (pkgconfPkgs.libxfconf-0) ];
        };
      exes = {
        "tests" = { pkgconfig = [ (pkgconfPkgs.libxfconf-0) ]; };
        "testGlib" = { pkgconfig = [ (pkgconfPkgs.libxfconf-0) ]; };
        };
      };
    }