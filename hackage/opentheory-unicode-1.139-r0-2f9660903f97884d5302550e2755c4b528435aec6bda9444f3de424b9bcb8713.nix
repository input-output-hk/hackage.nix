{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "opentheory-unicode";
        version = "1.139";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Unicode characters";
      description = "Unicode characters - this package was automatically generated from the\nOpenTheory package char-1.139";
      buildType = "Simple";
    };
    components = {
      "opentheory-unicode" = {
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