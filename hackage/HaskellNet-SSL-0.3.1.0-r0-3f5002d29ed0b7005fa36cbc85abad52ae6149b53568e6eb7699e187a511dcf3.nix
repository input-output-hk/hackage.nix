{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { noupperbounds = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "HaskellNet-SSL"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Daniel P. Wright";
      maintainer = "dani@dpwright.com";
      author = "Daniel P. Wright";
      homepage = "https://github.com/dpwright/HaskellNet-SSL";
      url = "";
      synopsis = "Helpers to connect to SSL/TLS mail servers with HaskellNet";
      description = "This package ties together the HaskellNet and connection\npackages to make it easy to open IMAP and SMTP connections\nover SSL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HaskellNet" or ((hsPkgs.pkgs-errors).buildDepError "HaskellNet"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }