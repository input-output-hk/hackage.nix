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
        name = "tasty-dejafu";
        version = "0.7.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/dejafu";
      url = "";
      synopsis = "Deja Fu support for the Tasty test framework.";
      description = "Integration between the <https://hackage.haskell.org/package/dejafu dejafu>\nlibrary for concurrency testing and\n<https://hackage.haskell.org/package/tasty tasty>. This lets you\neasily incorporate concurrency testing into your existing test\nsuites.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.dejafu)
          (hsPkgs.random)
          (hsPkgs.tagged)
          (hsPkgs.tasty)
        ];
      };
    };
  }