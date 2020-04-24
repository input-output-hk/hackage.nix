{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pkcs10"; version = "0.1.0.3"; };
      license = "Apache-2.0";
      copyright = "Timothy Klim <hackage@timothyklim.com>";
      maintainer = "Timothy Klim <hackage@timothyklim.com>";
      author = "Timothy Klim <hackage@timothyklim.com>";
      homepage = "https://github.com/fcomb/pkcs10-hs#readme";
      url = "";
      synopsis = "PKCS#10 library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."pem" or ((hsPkgs.pkgs-errors).buildDepError "pem"))
          (hsPkgs."asn1-types" or ((hsPkgs.pkgs-errors).buildDepError "asn1-types"))
          (hsPkgs."asn1-encoding" or ((hsPkgs.pkgs-errors).buildDepError "asn1-encoding"))
          (hsPkgs."asn1-parse" or ((hsPkgs.pkgs-errors).buildDepError "asn1-parse"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pkcs10" or ((hsPkgs.pkgs-errors).buildDepError "pkcs10"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."pem" or ((hsPkgs.pkgs-errors).buildDepError "pem"))
            (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
            (hsPkgs."asn1-types" or ((hsPkgs.pkgs-errors).buildDepError "asn1-types"))
            (hsPkgs."asn1-encoding" or ((hsPkgs.pkgs-errors).buildDepError "asn1-encoding"))
            (hsPkgs."asn1-parse" or ((hsPkgs.pkgs-errors).buildDepError "asn1-parse"))
            ];
          buildable = true;
          };
        };
      };
    }