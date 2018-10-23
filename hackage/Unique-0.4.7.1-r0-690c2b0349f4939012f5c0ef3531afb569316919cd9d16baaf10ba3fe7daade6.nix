{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Unique";
        version = "0.4.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ualinuxcn@gmail.com";
      author = "Volodymyr Yaschenko";
      homepage = "";
      url = "";
      synopsis = "It provides the functionality like unix \"uniq\" utility";
      description = "Library provides the functions to find unique and duplicate elements in the list";
      buildType = "Simple";
    };
    components = {
      "Unique" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.extra)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "HspecTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.Unique)
          ];
        };
      };
    };
  }