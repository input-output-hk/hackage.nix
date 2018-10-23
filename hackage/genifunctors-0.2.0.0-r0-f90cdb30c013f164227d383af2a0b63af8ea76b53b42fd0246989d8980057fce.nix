{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "genifunctors";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danr@chalmers.se";
      author = "Dan Rosén";
      homepage = "https://github.com/danr/genifunctors";
      url = "";
      synopsis = "Generate generalized fmap, foldMap and traverse";
      description = "Generate (derive) fmap, foldMap and traverse for Bifunctors, Trifunctors, or a functor with any arity";
      buildType = "Simple";
    };
    components = {
      "genifunctors" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.mtl)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }