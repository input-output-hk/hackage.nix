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
      identifier = { name = "bitcoin-payment-channel"; version = "1.2.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Rune K. Svendsen <runesvend@gmail.com>";
      author = "Rune K. Svendsen <runesvend@gmail.com>";
      homepage = "https://github.com/runeksvendsen/bitcoin-payment-channel";
      url = "";
      synopsis = "Instant, two-party Bitcoin payments";
      description = "A Bitcoin payment channel allows secure and instant transfer of bitcoins from one party to another. Payments are created and verified in less than a millisecond (plus network latency), and cannot be double spent, as the receiver of funds is defined during channel setup. When the channel is closed, the settlement transaction transfers the appropriate value to each party, thus paying the Bitcoin transaction fee only once, regardless of the number of payments made over the channel.\nThe channel setup procedure is trustless, because the funding party - after the chosen expiration date - is able to reclaim the bitcoins used to fund the channel, in case the receiving party goes missing.\nThis library implements a type of payment channel where channel setup is safe from transaction ID malleability, and value transfer is uni-directional (one party sends and the other party receives) (CHECKLOCKTIMEVERIFY-style).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskoin-core" or (buildDepError "haskoin-core"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."hexstring" or (buildDepError "hexstring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."monad-time" or (buildDepError "monad-time"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."rbpcp-api" or (buildDepError "rbpcp-api"))
          (hsPkgs."blockchain-restful-address-index-api" or (buildDepError "blockchain-restful-address-index-api"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskoin-core" or (buildDepError "haskoin-core"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."hexstring" or (buildDepError "hexstring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."monad-time" or (buildDepError "monad-time"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."rbpcp-api" or (buildDepError "rbpcp-api"))
            (hsPkgs."blockchain-restful-address-index-api" or (buildDepError "blockchain-restful-address-index-api"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bitcoin-payment-channel" or (buildDepError "bitcoin-payment-channel"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."tf-random" or (buildDepError "tf-random"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskoin-core" or (buildDepError "haskoin-core"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."hexstring" or (buildDepError "hexstring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."monad-time" or (buildDepError "monad-time"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."rbpcp-api" or (buildDepError "rbpcp-api"))
            (hsPkgs."blockchain-restful-address-index-api" or (buildDepError "blockchain-restful-address-index-api"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."bitcoin-payment-channel" or (buildDepError "bitcoin-payment-channel"))
            ];
          };
        };
      };
    }