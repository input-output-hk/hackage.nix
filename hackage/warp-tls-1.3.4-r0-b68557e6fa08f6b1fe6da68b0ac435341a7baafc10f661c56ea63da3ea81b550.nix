{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "warp-tls"; version = "1.3.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "SSL support for Warp via the TLS package";
      description = "SSL support for Warp via the TLS package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."network-conduit" or ((hsPkgs.pkgs-errors).buildDepError "network-conduit"))
          (hsPkgs."certificate" or ((hsPkgs.pkgs-errors).buildDepError "certificate"))
          (hsPkgs."pem" or ((hsPkgs.pkgs-errors).buildDepError "pem"))
          (hsPkgs."cryptocipher" or ((hsPkgs.pkgs-errors).buildDepError "cryptocipher"))
          (hsPkgs."tls-extra" or ((hsPkgs.pkgs-errors).buildDepError "tls-extra"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }