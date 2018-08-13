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
        version = "2.0.0.0";
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
          (hsPkgs.monad-control)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
    };
  }