{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "WL500gPControl";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Vasyl Pasternak <vasyl.pasternak@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A simple command line tools to control the\nAsus WL500gP router";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "WL500gPStatus" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.WL500gPLib)
          ];
        };
        "WL500gPControl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.WL500gPLib)
            (hsPkgs.mtl)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }