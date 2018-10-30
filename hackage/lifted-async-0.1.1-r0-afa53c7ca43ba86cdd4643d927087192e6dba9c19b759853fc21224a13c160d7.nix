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
      specVersion = "1.8";
      identifier = {
        name = "lifted-async";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2012 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/lifted-async";
      url = "";
      synopsis = "Run lifted IO operations asynchronously and wait for their results";
      description = "This package provides IO operations from @async@ package lifted to any\ninstance of 'MonadBase' or 'MonadBaseControl'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "test-lifted-async" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.lifted-async)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
          ];
        };
        "regression-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.lifted-async)
            (hsPkgs.mtl)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
          ];
        };
      };
      benchmarks = {
        "benchmark-lifted-async" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.lifted-async)
          ];
        };
        "benchmark-lifted-async-threaded" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.lifted-async)
          ];
        };
      };
    };
  }