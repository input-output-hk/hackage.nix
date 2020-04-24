{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = { name = "yesod-auth-hashdb"; version = "1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Paul Rouse <pyr@doynton.org>";
      author = "Patrick Brisbin, later changes Paul Rouse";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Authentication plugin for Yesod.";
      description = "This package is the Yesod.Auth.HashDB plugin, originally included in yesod-auth, but now modified to be more secure and placed in a separate package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."yesod-persistent" or ((hsPkgs.pkgs-errors).buildDepError "yesod-persistent"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          (hsPkgs."pwstore-fast" or ((hsPkgs.pkgs-errors).buildDepError "pwstore-fast"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          ];
        buildable = true;
        };
      };
    }