{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "heyting-algebras"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2019 Marcin Szamotulski";
      maintainer = "profunctor@pm.me";
      author = "Marcin Szamotulski";
      homepage = "";
      url = "";
      synopsis = "Heyting and Boolean algebras";
      description = "This package provides Heyting and Boolean operations together\nwith various constructions of Heyting algebras.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.free-algebras)
          (hsPkgs.hashable)
          (hsPkgs.lattices)
          (hsPkgs.semiring-simple)
          (hsPkgs.tagged)
          (hsPkgs.unordered-containers)
          (hsPkgs.universe-base)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.lattices)
            (hsPkgs.universe-base)
            (hsPkgs.QuickCheck)
            (hsPkgs.heyting-algebras)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }