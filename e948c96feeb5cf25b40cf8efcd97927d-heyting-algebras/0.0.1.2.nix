{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      export-properties = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "heyting-algebras";
        version = "0.0.1.2";
      };
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
      "heyting-algebras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.free-algebras)
          (hsPkgs.hashable)
          (hsPkgs.lattices)
          (hsPkgs.tagged)
          (hsPkgs.unordered-containers)
          (hsPkgs.universe-base)
        ] ++ pkgs.lib.optional (_flags.export-properties) (hsPkgs.QuickCheck);
      };
      tests = {
        "heyting-algebras-test" = {
          depends  = [
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