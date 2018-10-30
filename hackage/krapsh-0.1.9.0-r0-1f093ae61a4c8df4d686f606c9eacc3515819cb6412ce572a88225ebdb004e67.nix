{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "krapsh";
        version = "0.1.9.0";
      };
      license = "Apache-2.0";
      copyright = "2016 Kraps-Haskell contributors";
      maintainer = "krapsh@yandex.com";
      author = "krapsh";
      homepage = "https://github.com/krapsh/kraps-haskell";
      url = "";
      synopsis = "Haskell bindings for Spark Dataframes and Datasets";
      description = "Krapsh is an exploration vehicle for developing safe,\nrobust and reliable data pipelines over Apache Spark, using\nthe DataFrame API.\nIn order to use it, you must launch Spark with the\nkraps-server module installed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.formatting)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.monad-logger)
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
          (hsPkgs.scientific)
          (hsPkgs.SHA)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wreq)
        ];
      };
      tests = {
        "krapsh-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.formatting)
            (hsPkgs.krapsh)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
          ];
        };
        "krapsh-test-integration" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.formatting)
            (hsPkgs.krapsh)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }