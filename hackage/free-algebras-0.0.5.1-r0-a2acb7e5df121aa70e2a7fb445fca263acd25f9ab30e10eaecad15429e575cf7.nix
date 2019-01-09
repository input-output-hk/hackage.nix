{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { develop = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "free-algebras"; version = "0.0.5.1"; };
      license = "MPL-2.0";
      copyright = "(c) 2018 Marcin Szamotulski";
      maintainer = "profunctor@pm.me";
      author = "Marcin Szamotulski";
      homepage = "https://github.com/coot/free-algebras#readme";
      url = "";
      synopsis = "Free algebras in Haskell.";
      description = "Universal algebra approach to free algebras including higher kinded algebraic structures like functors, applicative functors or monads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.data-fix)
          (hsPkgs.dlist)
          (hsPkgs.free)
          (hsPkgs.groups)
          (hsPkgs.kan-extensions)
          (hsPkgs.mtl)
          (hsPkgs.natural-numbers)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "free-algebras-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.data-fix)
            (hsPkgs.dlist)
            (hsPkgs.free)
            (hsPkgs.free-algebras)
            (hsPkgs.groups)
            (hsPkgs.hedgehog)
            (hsPkgs.kan-extensions)
            (hsPkgs.mtl)
            (hsPkgs.natural-numbers)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }