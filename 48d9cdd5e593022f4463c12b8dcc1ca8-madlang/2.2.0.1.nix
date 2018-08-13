{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      llvm-fast = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "madlang";
        version = "2.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/madlang#readme";
      url = "";
      synopsis = "Randomized templating language DSL";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "madlang" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.megaparsec)
          (hsPkgs.text)
          (hsPkgs.optparse-applicative)
          (hsPkgs.MonadRandom)
          (hsPkgs.composition)
          (hsPkgs.directory)
          (hsPkgs.random-shuffle)
          (hsPkgs.microlens)
          (hsPkgs.mtl)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "madlang" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.madlang)
          ];
        };
      };
      tests = {
        "madlang-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.madlang)
            (hsPkgs.hspec)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.hspec-megaparsec)
          ];
        };
      };
      benchmarks = {
        "tweeths-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.madlang)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }