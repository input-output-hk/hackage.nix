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
        name = "primitive-indexed";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/primitive-indexed#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/andrewthad/primitive-indexed#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.primitive-indexed)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }