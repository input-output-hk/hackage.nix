{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "simple-genetic-algorithm";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@eax.me";
      author = "Alexander Alexeev";
      homepage = "http://eax.me/haskell-genetic-algorithm/";
      url = "";
      synopsis = "Simple parallel genetic algorithm implementation";
      description = "Simple parallel genetic algorithm implementation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.parallel)
        ];
      };
      exes = {
        "ga-sin-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.deepseq)
            (hsPkgs.parallel)
          ];
        };
      };
    };
  }