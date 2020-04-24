{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cryptonite-openssl"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/haskell-crypto/cryptonite-openssl";
      url = "";
      synopsis = "Crypto stuff using OpenSSL cryptographic library";
      description = "cryptography";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          ];
        libs = if system.isWindows || system.isWindows
          then [
            (pkgs."eay32" or ((hsPkgs.pkgs-errors).sysDepError "eay32"))
            (pkgs."ssl32" or ((hsPkgs.pkgs-errors).sysDepError "ssl32"))
            ]
          else [
            (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
            ];
        buildable = true;
        };
      tests = {
        "test-cryptonite-openssl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-kat" or ((hsPkgs.pkgs-errors).buildDepError "tasty-kat"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."cryptonite-openssl" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite-openssl"))
            ];
          buildable = true;
          };
        };
      };
    }