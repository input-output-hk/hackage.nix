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
        name = "bitcoin-payment-channel";
        version = "1.2.0.0";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskoin-core)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.errors)
          (hsPkgs.hexstring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.string-conversions)
          (hsPkgs.tagged)
          (hsPkgs.semigroups)
          (hsPkgs.QuickCheck)
          (hsPkgs.monad-time)
          (hsPkgs.deepseq)
          (hsPkgs.rbpcp-api)
          (hsPkgs.blockchain-restful-address-index-api)
          (hsPkgs.hspec)
          (hsPkgs.data-default-class)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "test-all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskoin-core)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.errors)
            (hsPkgs.hexstring)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.scientific)
            (hsPkgs.string-conversions)
            (hsPkgs.tagged)
            (hsPkgs.semigroups)
            (hsPkgs.QuickCheck)
            (hsPkgs.monad-time)
            (hsPkgs.deepseq)
            (hsPkgs.rbpcp-api)
            (hsPkgs.blockchain-restful-address-index-api)
            (hsPkgs.hspec)
            (hsPkgs.data-default-class)
            (hsPkgs.either)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.bitcoin-payment-channel)
            (hsPkgs.hspec-discover)
            (hsPkgs.base64-bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.tf-random)
            (hsPkgs.random)
            (hsPkgs.mtl)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskoin-core)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.errors)
            (hsPkgs.hexstring)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.scientific)
            (hsPkgs.string-conversions)
            (hsPkgs.tagged)
            (hsPkgs.semigroups)
            (hsPkgs.QuickCheck)
            (hsPkgs.monad-time)
            (hsPkgs.deepseq)
            (hsPkgs.rbpcp-api)
            (hsPkgs.blockchain-restful-address-index-api)
            (hsPkgs.hspec)
            (hsPkgs.data-default-class)
            (hsPkgs.either)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.criterion)
            (hsPkgs.bitcoin-payment-channel)
          ];
        };
      };
    };
  }