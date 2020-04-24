{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-auth-hmac-keccak"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "nek0@chelnok.de";
      author = "nek0";
      homepage = "";
      url = "";
      synopsis = "An account authentication plugin for yesod with encrypted\ntoken transfer.";
      description = "This authentication plugin for Yesod uses a challenge-response\nauthentication mechanism, where the password is encrypted via HMAC-\nKeccak on the client side.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          (hsPkgs."yesod-auth" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth"))
          (hsPkgs."yesod-static" or ((hsPkgs.pkgs-errors).buildDepError "yesod-static"))
          (hsPkgs."yesod-persistent" or ((hsPkgs.pkgs-errors).buildDepError "yesod-persistent"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          ];
        buildable = true;
        };
      };
    }