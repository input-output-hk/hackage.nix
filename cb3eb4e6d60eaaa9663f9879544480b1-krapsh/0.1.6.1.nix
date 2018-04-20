{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "krapsh";
          version = "0.1.6.1";
        };
        license = "Apache-2.0";
        copyright = "2016 Kraps-Haskell contributors";
        maintainer = "krapsh@yandex.com";
        author = "krapsh";
        homepage = "https://github.com/krapsh/kraps-haskell";
        url = "";
        synopsis = "Haskell bindings for Spark Dataframes and Datasets";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        krapsh = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cryptohash-sha256
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.formatting
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.monad-logger
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.scientific
            hsPkgs.SHA
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.wreq
          ];
        };
        tests = {
          krapsh-test = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.formatting
              hsPkgs.krapsh
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.raw-strings-qq
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
          krapsh-test-integration = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.formatting
              hsPkgs.krapsh
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.raw-strings-qq
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
        };
      };
    }