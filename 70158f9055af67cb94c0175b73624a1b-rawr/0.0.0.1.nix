{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rawr";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 PkmX";
      maintainer = "pkmx.tw@gmail.com";
      author = "PkmX";
      homepage = "https://github.com/pkmx/rawr";
      url = "";
      synopsis = "Anonymous extensible records";
      description = "This library provides anonymous extensible records using GHC 8.0 features, with the following goals/features:\n\n* The syntax should be very close to that of Haskell's record system.\n\n* The library should be simple to use and requires no extra boilerplate to setup.\n\n* There should be minimal runtime overhead and memory footprint.\n\n* The library does not require @TemplateHaskell@ to use.\n\n* It should produce good error messages.\n\n* Minimal dependencies. Currently, it only depends on packages that comes with GHC.\n\nSee @<https://hackage.haskell.org/package/rawr/docs/Data-Rawr.html Data.Rawr>@ for a tutorial of this library.";
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