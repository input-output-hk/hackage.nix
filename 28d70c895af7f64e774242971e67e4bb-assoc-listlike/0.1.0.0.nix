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
      specVersion = "1.10";
      identifier = {
        name = "assoc-listlike";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/assoc-list";
      url = "";
      synopsis = "Association lists (list-like collections of tuples)";
      description = "An association list conceptually signifies a mapping,\nbut is represented as a list (of key-value pairs).\n\nThis package defines an association list as a constraint\nsynonym for a list-like collection of tuples, using the\n@ListLike@ type class from the @ListLike@ package.\n\n> type AssocList l a b = ListLike l (a, b)";
      buildType = "Simple";
    };
    components = {
      "assoc-listlike" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.ListLike)
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
            (hsPkgs.assoc-listlike)
            (hsPkgs.base)
            (hsPkgs.contravariant)
            (hsPkgs.doctest)
            (hsPkgs.hedgehog)
          ];
        };
      };
    };
  }