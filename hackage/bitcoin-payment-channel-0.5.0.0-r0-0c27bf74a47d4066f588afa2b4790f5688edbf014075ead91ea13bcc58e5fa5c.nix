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
        version = "0.5.0.0";
      };
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
          (hsPkgs.base)
          (hsPkgs.haskoin-core)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
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
        ];
      };
      tests = {
        "test-bitcoin-payment-channel" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskoin-core)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.hexstring)
            (hsPkgs.text)
            (hsPkgs.string-conversions)
            (hsPkgs.time)
            (hsPkgs.cereal)
            (hsPkgs.aeson)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.bitcoin-payment-channel)
          ];
        };
      };
    };
  }