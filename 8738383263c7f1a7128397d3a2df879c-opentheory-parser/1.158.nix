{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "opentheory-parser";
        version = "1.158";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "http://opentheory.gilith.com/?pkg=parser";
      url = "";
      synopsis = "Stream parsers";
      description = "Stream parsers - this package was automatically generated from the\nOpenTheory package parser-1.158";
      buildType = "Simple";
    };
    components = {
      "opentheory-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.opentheory-primitive)
          (hsPkgs.opentheory)
        ];
      };
      tests = {
        "opentheory-parser-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.opentheory-primitive)
            (hsPkgs.opentheory)
          ];
        };
      };
    };
  }