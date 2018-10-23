{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.6";
      identifier = {
        name = "opentheory-parser";
        version = "1.115";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Stream parsers";
      description = "Stream parsers - automatically generated from the opentheory package\nhaskell-parser-1.115";
      buildType = "Simple";
    };
    components = {
      "opentheory-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          (hsPkgs.opentheory-primitive)
          (hsPkgs.opentheory)
        ];
      };
      exes = {
        "opentheory-parser-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.opentheory-primitive)
            (hsPkgs.opentheory)
          ];
        };
      };
    };
  }