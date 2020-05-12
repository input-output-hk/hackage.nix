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
      identifier = { name = "bitcoin-payment-channel"; version = "1.0.1.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskoin-core" or (errorHandler.buildDepError "haskoin-core"))
          (hsPkgs."rbpcp-api" or (errorHandler.buildDepError "rbpcp-api"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."hexstring" or (errorHandler.buildDepError "hexstring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."monad-time" or (errorHandler.buildDepError "monad-time"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
        buildable = true;
        };
      tests = {
        "test-bitcoin-payment-channel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskoin-core" or (errorHandler.buildDepError "haskoin-core"))
            (hsPkgs."rbpcp-api" or (errorHandler.buildDepError "rbpcp-api"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."hexstring" or (errorHandler.buildDepError "hexstring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."monad-time" or (errorHandler.buildDepError "monad-time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bitcoin-payment-channel" or (errorHandler.buildDepError "bitcoin-payment-channel"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskoin-core" or (errorHandler.buildDepError "haskoin-core"))
            (hsPkgs."rbpcp-api" or (errorHandler.buildDepError "rbpcp-api"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."hexstring" or (errorHandler.buildDepError "hexstring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."monad-time" or (errorHandler.buildDepError "monad-time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."bitcoin-payment-channel" or (errorHandler.buildDepError "bitcoin-payment-channel"))
            ];
          buildable = true;
          };
        };
      };
    }