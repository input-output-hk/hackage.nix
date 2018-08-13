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
        name = "hunit-dejafu";
        version = "1.2.0.5";
      };
      license = "MIT";
      copyright = "(c) 2015--2017 Michael Walker";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/dejafu";
      url = "";
      synopsis = "Deja Fu support for the HUnit test framework.";
      description = "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>\nlibrary for concurrency testing and\n<https://hackage.haskell.org/package/HUnit HUnit>. This lets you\neasily incorporate concurrency testing into your existing test\nsuites.";
      buildType = "Simple";
    };
    components = {
      "hunit-dejafu" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.dejafu)
          (hsPkgs.HUnit)
        ];
      };
    };
  }