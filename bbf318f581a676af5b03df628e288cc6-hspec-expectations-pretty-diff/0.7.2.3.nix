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
        name = "hspec-expectations-pretty-diff";
        version = "0.7.2.3";
      };
      license = "MIT";
      copyright = "(c) 2011-2015 Simon Hengel";
      maintainer = "greg@unrelenting.technology";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme";
      url = "";
      synopsis = "Catchy combinators for HUnit";
      description = "Catchy combinators for HUnit: <https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme>";
      buildType = "Simple";
    };
    components = {
      "hspec-expectations-pretty-diff" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HUnit)
          (hsPkgs.text)
          (hsPkgs.hindent)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hscolour)
          (hsPkgs.Diff)
          (hsPkgs.ansi-terminal)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec-expectations-pretty-diff)
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }