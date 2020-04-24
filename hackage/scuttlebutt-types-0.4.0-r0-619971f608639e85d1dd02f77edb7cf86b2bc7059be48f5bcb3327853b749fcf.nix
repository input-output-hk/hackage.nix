{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scuttlebutt-types"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 bkil.hu, Peter Ferenc Hajdu, Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "bkil.hu, Peter Ferenc Hajdu, Joey Hess";
      homepage = "";
      url = "";
      synopsis = "generic types for Secure Scuttlebutt";
      description = "Secure Scuttlebutt is a database of unforgeable append-only feeds,\noptimized for efficient replication for peer to peer protocols.\n\nThis library contains data types for common Scuttlebutt messages,\nincluding JSON deserialization.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."ed25519" or ((hsPkgs.pkgs-errors).buildDepError "ed25519"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "scuttlebutt-types-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."scuttlebutt-types" or ((hsPkgs.pkgs-errors).buildDepError "scuttlebutt-types"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }