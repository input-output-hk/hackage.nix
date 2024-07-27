{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-abci"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Christopher Goes";
      maintainer = "cwgoes@protonmail.ch";
      author = "Christopher Goes";
      homepage = "https://github.com/cwgoes/haskell-abci#readme";
      url = "";
      synopsis = "Haskell Application BlockChain Interface (ABCI) Server Library";
      description = "Haskell library for writing Application BlockChain Interface (ABCI) servers. Licensed under BSD 3-clause (see LICENSE).";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.proto-lens-protoc or (pkgs.pkgsBuildBuild.proto-lens-protoc or (errorHandler.setupDepError "proto-lens-protoc")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-arbitrary" or (errorHandler.buildDepError "proto-lens-arbitrary"))
          (hsPkgs."proto-lens-protoc" or (errorHandler.buildDepError "proto-lens-protoc"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
          (hsPkgs."network-conduit" or (errorHandler.buildDepError "network-conduit"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
      exes = {
        "haskell-abci-counter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskell-abci" or (errorHandler.buildDepError "haskell-abci"))
          ];
          buildable = true;
        };
      };
    };
  }