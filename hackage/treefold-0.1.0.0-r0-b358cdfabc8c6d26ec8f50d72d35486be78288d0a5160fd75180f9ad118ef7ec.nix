{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "treefold"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/treefold";
      url = "";
      synopsis = "";
      description = "Provides several variants of a balanced fold.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.parallel) ]; };
      tests = {
        "treefold-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.treefold)
            (hsPkgs.doctest)
            (hsPkgs.hedgehog)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.treefold)
            (hsPkgs.criterion)
            (hsPkgs.random)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }