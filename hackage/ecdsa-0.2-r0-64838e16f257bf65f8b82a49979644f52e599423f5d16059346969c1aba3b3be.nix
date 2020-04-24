{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ecdsa"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2014 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/ecdsa-haskell";
      url = "";
      synopsis = "Basic ECDSA signing implementation";
      description = "Wraps the stuff in hecc to do ECDSA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hecc" or ((hsPkgs.pkgs-errors).buildDepError "hecc"))
          (hsPkgs."crypto-pubkey-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey-types"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          ];
        buildable = true;
        };
      };
    }