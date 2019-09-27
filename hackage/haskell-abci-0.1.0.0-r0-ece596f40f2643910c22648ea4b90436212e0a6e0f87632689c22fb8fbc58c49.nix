let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.proto-lens-protoc or (pkgs.buildPackages.proto-lens-protoc or (buildToolDepError "proto-lens-protoc")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."foundation" or (buildDepError "foundation"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
          (hsPkgs."proto-lens-arbitrary" or (buildDepError "proto-lens-arbitrary"))
          (hsPkgs."proto-lens-protoc" or (buildDepError "proto-lens-protoc"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
          (hsPkgs."binary" or (buildDepError "binary"))
          ];
        buildable = true;
        };
      exes = {
        "haskell-abci-counter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."foundation" or (buildDepError "foundation"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."haskell-abci" or (buildDepError "haskell-abci"))
            ];
          buildable = true;
          };
        };
      };
    }