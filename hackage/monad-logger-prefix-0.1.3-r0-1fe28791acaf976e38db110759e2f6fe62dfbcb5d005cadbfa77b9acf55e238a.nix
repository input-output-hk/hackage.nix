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
        name = "monad-logger-prefix";
        version = "0.1.3";
      };
      license = "LicenseRef-Apache";
      copyright = "2016 Seller Labs";
      maintainer = "Matthew Parsons";
      author = "Matthew Parsons";
      homepage = "https://github.com/sellerlabs/monad-logger-prefix#readme";
      url = "";
      synopsis = "Add prefixes to your monad-logger output";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "monad-logger-prefix" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monad-logger)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.text)
          (hsPkgs.resourcet)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "monad-logger-prefix-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.monad-logger)
            (hsPkgs.monad-logger-prefix)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }