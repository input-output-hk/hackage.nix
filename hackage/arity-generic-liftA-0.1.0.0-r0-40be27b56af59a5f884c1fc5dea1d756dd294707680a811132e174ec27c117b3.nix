{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "arity-generic-liftA"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/arity-generic-liftA#readme";
      url = "";
      synopsis = "Provides an arity-generic version of the liftA2, liftA3... liftAn functions.";
      description = "Please see the README on GitHub at <https://github.com/oisdk/arity-generic-liftA#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "arity-generic-liftA-test" = {
          depends = [
            (hsPkgs.arity-generic-liftA)
            (hsPkgs.base)
            (hsPkgs.doctest)
            ];
          };
        };
      };
    }