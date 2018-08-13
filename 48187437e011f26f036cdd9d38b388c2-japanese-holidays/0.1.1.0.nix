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
        name = "japanese-holidays";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 TANIGUCHI Kohei";
      maintainer = "a.d.xvii.kal.mai@gmail.com";
      author = "TANIGUCHI Kohei";
      homepage = "http://github.com/cohei/japanese-holidays#readme";
      url = "";
      synopsis = "Japanese holidays utility";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "japanese-holidays" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.japanese-holidays)
            (hsPkgs.time)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }