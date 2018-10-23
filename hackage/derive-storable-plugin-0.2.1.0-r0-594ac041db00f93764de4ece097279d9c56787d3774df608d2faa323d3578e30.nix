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
        name = "derive-storable-plugin";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mateusz.p.kloczko@gmail.com";
      author = "Mateusz Kłoczko";
      homepage = "https://www.github.com/mkloczko/derive-storable-plugin/";
      url = "";
      synopsis = "GHC core plugin supporting the derive-storable package.";
      description = "The package helps derive-storable package in forcing compile time evaluation of\nsizes, alignments and offsets.";
      buildType = "Simple";
    };
    components = {
      "derive-storable-plugin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghci)
          (hsPkgs.derive-storable)
        ];
      };
      tests = {
        "ids-concrete" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghci)
            (hsPkgs.ghc-paths)
            (hsPkgs.derive-storable)
            (hsPkgs.derive-storable-plugin)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
        "ids-handwritten" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghci)
            (hsPkgs.ghc-paths)
            (hsPkgs.derive-storable)
            (hsPkgs.derive-storable-plugin)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
        "ids-newtype" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghci)
            (hsPkgs.ghc-paths)
            (hsPkgs.derive-storable)
            (hsPkgs.derive-storable-plugin)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
        "ids-parametrised-spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghci)
            (hsPkgs.ghc-paths)
            (hsPkgs.derive-storable)
            (hsPkgs.derive-storable-plugin)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
        "ids-typesynonym" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghci)
            (hsPkgs.ghc-paths)
            (hsPkgs.derive-storable)
            (hsPkgs.derive-storable-plugin)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "plugin-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.derive-storable)
            (hsPkgs.derive-storable-plugin)
          ];
        };
      };
    };
  }