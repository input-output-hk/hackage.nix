{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "commodities"; version = "0.2.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.PSQueue)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.distributive)
          (hsPkgs.keys)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.mtl)
          (hsPkgs.numbers)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.text)
          (hsPkgs.thyme)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            ];
          };
        "test" = {
          depends = [
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