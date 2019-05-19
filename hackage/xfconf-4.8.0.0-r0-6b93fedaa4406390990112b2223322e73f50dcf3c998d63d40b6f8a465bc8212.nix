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
        pkgconfig = [ (pkgconfPkgs."libxfconf-0") ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen))
          ];
        };
      exes = {
        "tests" = {
          pkgconfig = [ (pkgconfPkgs."libxfconf-0") ];
          build-tools = [
            (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs))
            (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator))
            (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen))
            ];
          };
        "testGlib" = {
          pkgconfig = [ (pkgconfPkgs."libxfconf-0") ];
          build-tools = [
            (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs))
            (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator))
            (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen))
            ];
          };
        };
      };
    }