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
        name = "commodities";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Library for working with commoditized amounts and price histories";
      description = "Library for working with commoditized amounts and price histories";
      buildType = "Simple";
    };
    components = {
      "commodities" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.PSQueue)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.distributive)
          (hsPkgs.failure)
          (hsPkgs.keys)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.mtl)
          (hsPkgs.numbers)
          (hsPkgs.parsers)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.thyme)
          (hsPkgs.transformers)
          (hsPkgs.trifecta)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.commodities)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.semigroups)
            (hsPkgs.thyme)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }