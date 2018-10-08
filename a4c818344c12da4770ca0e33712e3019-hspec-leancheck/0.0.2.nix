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
      specVersion = "1.18";
      identifier = {
        name = "hspec-leancheck";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/hspec-leancheck#readme";
      url = "";
      synopsis = "LeanCheck support for the Hspec test framework.";
      description = "LeanCheck support for the Hspec test framework.\n\nThis package can be used to incorporate LeanCheck tests into Hspec test\nsuites by means of the @Test.Hspec.LeanCheck.testProperty@ function.\n\nPlease see the Haddock documentation and README for more details.";
      buildType = "Simple";
    };
    components = {
      "hspec-leancheck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hspec)
          (hsPkgs.hspec-core)
          (hsPkgs.leancheck)
          (hsPkgs.HUnit)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.leancheck)
            (hsPkgs.hspec-leancheck)
          ];
        };
        "should" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.leancheck)
            (hsPkgs.hspec-leancheck)
          ];
        };
      };
    };
  }