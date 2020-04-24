{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bitcoin-payment-channel"; version = "0.5.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Rune K. Svendsen <runesvend@gmail.com>";
      author = "Rune K. Svendsen <runesvend@gmail.com>";
      homepage = "https://github.com/runeksvendsen/bitcoin-payment-channel";
      url = "";
      synopsis = "Library for working with Bitcoin payment channels";
      description = "A Bitcoin payment channel allows secure and instant transfer of bitcoins from one\nparty to another. Payments are created and verified in less than a millisecond\n(plus network latency), and cannot be double spent, as the receiver of funds is defined\nduring channel setup.\nWhen the channel is closed, the settlement transaction transfers the appropriate value to each\nparty, thus paying the Bitcoin transaction fee only once, regardless of the number of payments\nmade over the channel.\nThe channel setup procedure is trustless, because the funding party - after the chosen\nexpiration date - is able to reclaim the bitcoins used to fund the channel,\nin case the receiving party goes missing.\nThis library implements a type of payment channel where channel setup\nis safe from transaction ID malleability, and value transfer is uni-directional (one party\nsends and the other party receives) (CHECKLOCKTIMEVERIFY-style).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskoin-core" or ((hsPkgs.pkgs-errors).buildDepError "haskoin-core"))
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."hexstring" or ((hsPkgs.pkgs-errors).buildDepError "hexstring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          ];
        buildable = true;
        };
      tests = {
        "test-bitcoin-payment-channel" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskoin-core" or ((hsPkgs.pkgs-errors).buildDepError "haskoin-core"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            (hsPkgs."hexstring" or ((hsPkgs.pkgs-errors).buildDepError "hexstring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."bitcoin-payment-channel" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-payment-channel"))
            ];
          buildable = true;
          };
        };
      };
    }