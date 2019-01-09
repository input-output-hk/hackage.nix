{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ripple"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2014 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/ripple-haskell";
      url = "";
      synopsis = "Ripple payment system library";
      description = "Interact with Ripple servers, sign transactions, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.utility-ht)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.largeword)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.errors)
          (hsPkgs.base58address)
          (hsPkgs.crypto-api)
          (hsPkgs.cryptohash-cryptoapi)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.ecdsa)
          (hsPkgs.websockets)
          ];
        };
      };
    }