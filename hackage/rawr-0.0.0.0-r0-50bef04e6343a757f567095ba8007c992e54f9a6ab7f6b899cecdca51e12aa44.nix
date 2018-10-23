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
        name = "rawr";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 PkmX";
      maintainer = "pkmx.tw@gmail.com";
      author = "PkmX";
      homepage = "https://github.com/pkmx/rawr";
      url = "";
      synopsis = "Anonymous extensible records and variant types";
      description = "See \"Data.Rawr\" for a tutorial of this library.";
      buildType = "Simple";
    };
    components = {
      "rawr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "datasize" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.rawr)
            (hsPkgs.ghc-datasize)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.doctest)
            (hsPkgs.lens)
          ];
        };
      };
      benchmarks = {
        "perf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.rawr)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }