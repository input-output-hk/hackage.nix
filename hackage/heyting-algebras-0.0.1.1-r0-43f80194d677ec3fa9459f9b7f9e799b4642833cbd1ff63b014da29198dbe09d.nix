{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { export-properties = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "heyting-algebras"; version = "0.0.1.1"; };
      license = "MPL-2.0";
      copyright = "(c) 2018 Marcin Szamotulski";
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
          (hsPkgs.tagged)
          (hsPkgs.unordered-containers)
          (hsPkgs.universe-base)
          ] ++ (pkgs.lib).optional (flags.export-properties) (hsPkgs.QuickCheck);
        };
      tests = {
        "heyting-algebras-test" = {
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