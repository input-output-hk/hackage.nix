{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ssh"; version = "0.2.13.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Alex Suraci <suraci.alex@gmail.com>";
      homepage = "http://hub.darcs.net/simon/ssh";
      url = "";
      synopsis = "A pure-Haskell SSH server library.";
      description = "This a library for implementing your own servers that handle SSH\nrequests and authorization, etc. Similar to Python's Twisted Conch\nlibrary. It's used eg by darcsden to provide basic SSH access.\nThis package receives only basic maintenance; if you'd like to\ntake it over, please contact the current maintainer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."asn1-data" or ((hsPkgs.pkgs-errors).buildDepError "asn1-data"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-string" or ((hsPkgs.pkgs-errors).buildDepError "base64-string"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."crypto-pubkey-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey-types"))
          (hsPkgs."cryptohash-cryptoapi" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-cryptoapi"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."RSA" or ((hsPkgs.pkgs-errors).buildDepError "RSA"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
          (hsPkgs."SimpleAES" or ((hsPkgs.pkgs-errors).buildDepError "SimpleAES"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }