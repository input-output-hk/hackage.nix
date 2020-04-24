{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.proto-lens-protoc or (pkgs.buildPackages.proto-lens-protoc or ((hsPkgs.pkgs-errors).buildToolDepError "proto-lens-protoc")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."foundation" or ((hsPkgs.pkgs-errors).buildDepError "foundation"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
          (hsPkgs."proto-lens-arbitrary" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens-arbitrary"))
          (hsPkgs."proto-lens-protoc" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens-protoc"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
          (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
          (hsPkgs."network-conduit" or ((hsPkgs.pkgs-errors).buildDepError "network-conduit"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      exes = {
        "haskell-abci-counter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."foundation" or ((hsPkgs.pkgs-errors).buildDepError "foundation"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."haskell-abci" or ((hsPkgs.pkgs-errors).buildDepError "haskell-abci"))
            ];
          buildable = true;
          };
        };
      };
    }