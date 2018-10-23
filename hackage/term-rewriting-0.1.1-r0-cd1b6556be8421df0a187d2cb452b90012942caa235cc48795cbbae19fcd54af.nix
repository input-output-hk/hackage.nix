{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "term-rewriting";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "haskell-rewriting@informatik.uibk.ac.at";
      author = "Martin Avanzini,\nBertram Felgenhauer,\nChristian Sternagel,\nIlya Epifanov";
      homepage = "";
      url = "";
      synopsis = "Term Rewriting Library";
      description = "Yet Another Term Rewriting Library.\n\nThis library provides basic data types and functionality for first order\nterm rewriting.";
      buildType = "Simple";
    };
    components = {
      "term-rewriting" = {
        depends  = [
          (hsPkgs.containers)
          (hsPkgs.multiset)
          (hsPkgs.parsec)
          (hsPkgs.union-find-array)
          (hsPkgs.array)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.mtl)
          (hsPkgs.base)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.term-rewriting)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }