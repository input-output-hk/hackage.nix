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
      specVersion = "1.8.0.2";
      identifier = {
        name = "opentheory-unicode";
        version = "1.142";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "http://opentheory.gilith.com/?pkg=char";
      url = "";
      synopsis = "Unicode characters";
      description = "Unicode characters - this package was automatically generated from the\nOpenTheory package char-1.142";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.opentheory-primitive)
          (hsPkgs.opentheory)
          (hsPkgs.opentheory-byte)
          (hsPkgs.opentheory-bits)
          (hsPkgs.opentheory-parser)
          (hsPkgs.opentheory-probability)
        ];
      };
      tests = {
        "opentheory-unicode-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.opentheory-primitive)
            (hsPkgs.opentheory)
            (hsPkgs.opentheory-byte)
            (hsPkgs.opentheory-bits)
            (hsPkgs.opentheory-parser)
            (hsPkgs.opentheory-probability)
          ];
        };
      };
    };
  }