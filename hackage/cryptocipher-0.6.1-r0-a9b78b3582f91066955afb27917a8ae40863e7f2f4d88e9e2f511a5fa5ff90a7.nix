{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cryptocipher"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-cipher";
      url = "";
      synopsis = "Symmetrical block and stream ciphers.";
      description = "Symmetrical block and stream ciphers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."crypto-cipher-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-cipher-types"))
          (hsPkgs."cipher-aes" or ((hsPkgs.pkgs-errors).buildDepError "cipher-aes"))
          (hsPkgs."cipher-rc4" or ((hsPkgs.pkgs-errors).buildDepError "cipher-rc4"))
          (hsPkgs."cipher-des" or ((hsPkgs.pkgs-errors).buildDepError "cipher-des"))
          (hsPkgs."cipher-blowfish" or ((hsPkgs.pkgs-errors).buildDepError "cipher-blowfish"))
          (hsPkgs."cipher-camellia" or ((hsPkgs.pkgs-errors).buildDepError "cipher-camellia"))
          ];
        buildable = true;
        };
      };
    }