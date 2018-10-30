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
        version = "0.1.1.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Rune K. Svendsen <runesvend@gmail.com>";
      author = "Rune K. Svendsen <runesvend@gmail.com>";
      homepage = "https://github.com/runeksvendsen/bitcoin-payment-channel";
      url = "";
      synopsis = "Library for working with Bitcoin payment channels";
      description = "A Bitcoin payment channel allows two parties two send value to each other very rapidly.\nThe speed of the value transfer is limited primarily by network latency, and payments\ncannot be double spent, as the receiver of funds is defined during channel setup.\nThe channel setup procedure is trustless, in that the funding party is able to retrieve the funds,\nafter a chosen expiration date, in case the receiving party goes missing.\nThis library implements a type of payment channel (CHECKLOCKTIMEVERIFY-style) where channel setup\nis safe from transaction ID malleability, and value transfer is uni-directional (one party\nsends and the other party receives).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskoin-core)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base58string)
          (hsPkgs.hexstring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.time)
          (hsPkgs.cereal)
          (hsPkgs.binary)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
        ];
      };
      exes = {
        "Test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskoin-core)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.base58string)
            (hsPkgs.hexstring)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.cereal)
            (hsPkgs.binary)
            (hsPkgs.aeson)
            (hsPkgs.QuickCheck)
            (hsPkgs.bitcoin-payment-channel)
          ];
        };
      };
    };
  }