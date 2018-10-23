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
        name = "gitlib-test";
        version = "1.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@fpcomplete.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Test library for confirming gitlib backend compliance";
      description = "Test library for confirming gitlib backend compliance";
      buildType = "Simple";
    };
    components = {
      "gitlib-test" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gitlib)
          (hsPkgs.gitlib-utils)
          (hsPkgs.HUnit)
          (hsPkgs.hspec)
          (hsPkgs.hspec-expectations)
          (hsPkgs.monad-control)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.tagged)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
    };
  }