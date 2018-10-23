{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "binding-core";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@accursoft.org";
      author = "Gideon Sireling";
      homepage = "http://code.accursoft.com/binding";
      url = "";
      synopsis = "Data Binding";
      description = "Bind mutable data and lists to IO objects.\nWrappers for binding to graphical widgets are provided by binding-gtk and binding-wx.";
      buildType = "Simple";
    };
    components = {
      "binding-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "hunit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binding-core)
            (hsPkgs.random)
            (hsPkgs.HUnit)
          ];
        };
        "quickcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binding-core)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }