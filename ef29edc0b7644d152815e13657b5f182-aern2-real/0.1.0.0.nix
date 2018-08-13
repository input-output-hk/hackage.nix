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
      specVersion = "1.9.2";
      identifier = {
        name = "aern2-real";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2017 Michal Konecny";
      maintainer = "Michal Konecny <mikkonecny@gmail.com>";
      author = "Michal Konecny";
      homepage = "https://github.com/michalkonecny/aern2/aern2-real";
      url = "";
      synopsis = "Exact real numbers via Cauchy sequences and MPFR";
      description = "Exact real numbers as Cauchy sequences of MPFR approximations.\n\nSee module \"AERN2.Real\" for further documentation.";
      buildType = "Simple";
    };
    components = {
      "aern2-real" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.convertible)
          (hsPkgs.hspec)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.stm)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.mixed-types-num)
          (hsPkgs.aern2-mp)
        ];
      };
      exes = {
        "aern2-real-benchOp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mixed-types-num)
            (hsPkgs.aern2-mp)
            (hsPkgs.aern2-real)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
          ];
        };
        "aern2-generate-netlog-elm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elm-bridge)
            (hsPkgs.mixed-types-num)
            (hsPkgs.aern2-mp)
            (hsPkgs.aern2-real)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aern2-real)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }