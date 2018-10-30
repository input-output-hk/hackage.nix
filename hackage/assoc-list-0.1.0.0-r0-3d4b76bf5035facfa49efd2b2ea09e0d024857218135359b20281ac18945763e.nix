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
        name = "assoc-list";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/assoc-list";
      url = "";
      synopsis = "Association lists (lists of tuples)";
      description = "An association list conceptually signifies a mapping,\nbut is represented as a list (of key-value pairs).\n\nThis package defines an association list as a type\nalias for a list of tuples.\n\n> type AssocList a b = [(a, b)]";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "hedgehog" = {
          depends  = [
            (hsPkgs.assoc-list)
            (hsPkgs.base)
            (hsPkgs.contravariant)
            (hsPkgs.doctest)
            (hsPkgs.hedgehog)
          ];
        };
      };
    };
  }