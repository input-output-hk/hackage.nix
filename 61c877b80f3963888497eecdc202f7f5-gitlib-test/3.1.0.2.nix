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
        name = "gitlib-test";
        version = "3.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
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
          (hsPkgs.exceptions)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.monad-control)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
    };
  }