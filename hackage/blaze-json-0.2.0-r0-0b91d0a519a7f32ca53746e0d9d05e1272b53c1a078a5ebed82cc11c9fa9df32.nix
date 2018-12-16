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
        name = "blaze-json";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/blaze-json";
      url = "";
      synopsis = "tiny library for encoding json";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.bytestring-builder)
        ];
      };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.blaze-json)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.scientific)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
          ];
        };
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }