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
        name = "treefold";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2017 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/treefold";
      url = "";
      synopsis = "Provides folds which try to combine elements in a balanced way.";
      description = "Provides folds which try to combine elements in a balanced way.\nThese can be useful for constructing balanced binary trees, or more\nstable summation.";
      buildType = "Simple";
    };
    components = {
      "treefold" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parallel)
        ];
      };
      tests = {
        "treefold-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.treefold)
            (hsPkgs.doctest)
            (hsPkgs.hedgehog)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
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