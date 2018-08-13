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
        name = "difference-monoid";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/difference-monoid#readme";
      url = "";
      synopsis = "";
      description = "A Difference Monoid, to add subtraction to arbitrary monoids. Please see the README on Github at <https://github.com/oisdk/difference-monoid#readme>";
      buildType = "Simple";
    };
    components = {
      "difference-monoid" = {
        depends  = [
          (hsPkgs.adjunctions)
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.deepseq)
          (hsPkgs.distributive)
          (hsPkgs.groups)
          (hsPkgs.semigroupoids)
        ];
      };
      tests = {
        "difference-monoid-doctests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.adjunctions)
            (hsPkgs.base)
            (hsPkgs.comonad)
            (hsPkgs.deepseq)
            (hsPkgs.difference-monoid)
            (hsPkgs.distributive)
            (hsPkgs.doctest)
            (hsPkgs.groups)
            (hsPkgs.semigroupoids)
          ];
        };
        "difference-monoid-test" = {
          depends  = [
            (hsPkgs.adjunctions)
            (hsPkgs.base)
            (hsPkgs.comonad)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.difference-monoid)
            (hsPkgs.distributive)
            (hsPkgs.groups)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-checkers)
            (hsPkgs.semigroupoids)
          ];
        };
      };
    };
  }