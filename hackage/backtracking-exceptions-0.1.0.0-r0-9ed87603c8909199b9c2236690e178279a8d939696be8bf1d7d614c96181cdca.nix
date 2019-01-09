{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "backtracking-exceptions"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mjm540@york.ac.uk";
      author = "tapuu";
      homepage = "https://github.com/tapuu/backtracking-exceptions";
      url = "";
      synopsis = "A monad transformer for backtracking exceptions";
      description = "A monad transformer that adds backtracking exceptions to its base monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.either)
          (hsPkgs.kan-extensions)
          (hsPkgs.transformers)
          (hsPkgs.semigroupoids)
          (hsPkgs.free)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          ];
        };
      };
    }