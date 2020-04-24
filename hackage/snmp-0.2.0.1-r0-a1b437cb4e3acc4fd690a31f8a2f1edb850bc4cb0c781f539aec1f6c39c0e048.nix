{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "snmp"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Smirnov <chemistmail@gmail.com>";
      author = "Alexey Smirnov";
      homepage = "";
      url = "";
      synopsis = "API for write snmp client.";
      description = "API for write snmp client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."asn1-encoding" or ((hsPkgs.pkgs-errors).buildDepError "asn1-encoding"))
          (hsPkgs."asn1-types" or ((hsPkgs.pkgs-errors).buildDepError "asn1-types"))
          (hsPkgs."asn1-parse" or ((hsPkgs.pkgs-errors).buildDepError "asn1-parse"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."network-info" or ((hsPkgs.pkgs-errors).buildDepError "network-info"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."cipher-des" or ((hsPkgs.pkgs-errors).buildDepError "cipher-des"))
          (hsPkgs."crypto-cipher-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-cipher-types"))
          (hsPkgs."securemem" or ((hsPkgs.pkgs-errors).buildDepError "securemem"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."cipher-aes" or ((hsPkgs.pkgs-errors).buildDepError "cipher-aes"))
          ];
        buildable = true;
        };
      };
    }