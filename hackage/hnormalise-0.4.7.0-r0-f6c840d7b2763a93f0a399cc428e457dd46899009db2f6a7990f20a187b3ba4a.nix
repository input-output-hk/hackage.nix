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
      identifier = { name = "hnormalise"; version = "0.4.7.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Ghent University";
      maintainer = "itkovian@gmail.com";
      author = "Andy Georges";
      homepage = "https://github.com/itkovian/hnormalise#readme";
      url = "";
      synopsis = "Log message normalisation tool producing structured JSON messages";
      description = "Log message normalisation tool producing structured JSON messages";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."attoparsec-iso8601" or (buildDepError "attoparsec-iso8601"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."ip" or (buildDepError "ip"))
          (hsPkgs."permute" or (buildDepError "permute"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        };
      exes = {
        "hnormalise" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hnormalise" or (buildDepError "hnormalise"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."attoparsec-iso8601" or (buildDepError "attoparsec-iso8601"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."word8" or (buildDepError "word8"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."zeromq4-conduit" or (buildDepError "zeromq4-conduit"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            ];
          };
        "hnormalise-0mq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hnormalise" or (buildDepError "hnormalise"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."attoparsec-iso8601" or (buildDepError "attoparsec-iso8601"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."word8" or (buildDepError "word8"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."zeromq4-conduit" or (buildDepError "zeromq4-conduit"))
            ];
          };
        };
      tests = {
        "hnormalise-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."attoparsec-iso8601" or (buildDepError "attoparsec-iso8601"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."hnormalise" or (buildDepError "hnormalise"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."hspec-attoparsec" or (buildDepError "hspec-attoparsec"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      benchmarks = {
        "hnormalise-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hnormalise" or (buildDepError "hnormalise"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }