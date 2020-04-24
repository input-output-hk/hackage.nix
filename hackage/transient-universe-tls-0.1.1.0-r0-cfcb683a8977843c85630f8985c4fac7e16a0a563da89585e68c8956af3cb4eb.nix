{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "transient-universe-tls"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://github.com/transient-haskell/transient-universe-tls";
      url = "";
      synopsis = "transient with secure communications";
      description = "Secure communications for transient";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."cprng-aes" or ((hsPkgs.pkgs-errors).buildDepError "cprng-aes"))
          (hsPkgs."transient" or ((hsPkgs.pkgs-errors).buildDepError "transient"))
          (hsPkgs."transient-universe" or ((hsPkgs.pkgs-errors).buildDepError "transient-universe"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."x509-store" or ((hsPkgs.pkgs-errors).buildDepError "x509-store"))
          (hsPkgs."x509-system" or ((hsPkgs.pkgs-errors).buildDepError "x509-system"))
          ];
        buildable = true;
        };
      };
    }