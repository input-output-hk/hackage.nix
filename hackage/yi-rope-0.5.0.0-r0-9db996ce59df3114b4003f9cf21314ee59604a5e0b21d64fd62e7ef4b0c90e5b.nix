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
        name = "yi-rope";
        version = "0.5.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "";
      url = "";
      synopsis = "A rope data structure used by Yi";
      description = "A rope data structure used by Yi";
      buildType = "Simple";
    };
    components = {
      "yi-rope" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.charsetdetect-ae)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.fingertree)
          (hsPkgs.text)
          (hsPkgs.text-icu)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            (hsPkgs.yi-rope)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.yi-rope)
          ];
        };
      };
    };
  }