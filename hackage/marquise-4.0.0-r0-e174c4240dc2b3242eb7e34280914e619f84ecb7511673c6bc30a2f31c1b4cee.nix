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
      identifier = { name = "marquise"; version = "4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2013-2015 Anchor Systems, Pty Ltd and Others";
      maintainer = "Anchor Engineering <engineering@anchor.com.au>";
      author = "Anchor Engineering <engineering@anchor.com.au>";
      homepage = "";
      url = "";
      synopsis = "Client library for Vaultaire";
      description = "Marquise is a collection of a library and two executables for use with Vaultaire.\n\n1. A client and server library for reading/writing to the vault and spool files.\nThis provides streaming reads and writes to the vault using\n[pipes](https://hackage.haskell.org/package/pipes) as well as writing to spool\nfiles with automatic caching and rotation.\n\n2. An executable `marquised`, a daemon which writes data to the vault from spool\nfiles generated from users of the marquise library.\n\n3. An executable `data`, used for easily inspecting data in the vault as well as\nmarquise cache files.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-group" or (buildDepError "pipes-group"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-attoparsec" or (buildDepError "pipes-attoparsec"))
          (hsPkgs."siphash" or (buildDepError "siphash"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."packer" or (buildDepError "packer"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."vaultaire-common" or (buildDepError "vaultaire-common"))
          ];
        buildable = true;
        };
      exes = {
        "marquised" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vaultaire-common" or (buildDepError "vaultaire-common"))
            (hsPkgs."marquise" or (buildDepError "marquise"))
            ];
          buildable = true;
          };
        "data" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."data-binary-ieee754" or (buildDepError "data-binary-ieee754"))
            (hsPkgs."packer" or (buildDepError "packer"))
            (hsPkgs."vaultaire-common" or (buildDepError "vaultaire-common"))
            (hsPkgs."marquise" or (buildDepError "marquise"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spool-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."marquise" or (buildDepError "marquise"))
            ];
          buildable = true;
          };
        };
      };
    }