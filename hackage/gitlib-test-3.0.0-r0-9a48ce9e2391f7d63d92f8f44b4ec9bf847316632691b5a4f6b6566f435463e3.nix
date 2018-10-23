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
        version = "3.0.0";
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
          (hsPkgs.HUnit)
          (hsPkgs.hspec)
          (hsPkgs.hspec-expectations)
          (hsPkgs.bytestring)
          (hsPkgs.failure)
          (hsPkgs.conduit)
          (hsPkgs.monad-control)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
    };
  }