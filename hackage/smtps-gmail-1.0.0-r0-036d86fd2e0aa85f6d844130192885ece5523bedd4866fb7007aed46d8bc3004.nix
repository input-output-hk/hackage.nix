{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16.0";
      identifier = { name = "smtps-gmail"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013, Enzo Haussecker. All rights reserved.";
      maintainer = "Enzo Haussecker <enzo@ucsd.edu>";
      author = "Enzo Haussecker <enzo@ucsd.edu>";
      homepage = "https://github.com/enzoh/smtps-gmail";
      url = "";
      synopsis = "Gmail API";
      description = "Send email from your Gmail account using the simple message transfer protocol with transport layer security.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-string" or ((hsPkgs.pkgs-errors).buildDepError "base64-string"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cprng-aes" or ((hsPkgs.pkgs-errors).buildDepError "cprng-aes"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."tls-extra" or ((hsPkgs.pkgs-errors).buildDepError "tls-extra"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = {
        "gmail" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base64-string" or ((hsPkgs.pkgs-errors).buildDepError "base64-string"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cprng-aes" or ((hsPkgs.pkgs-errors).buildDepError "cprng-aes"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
            (hsPkgs."tls-extra" or ((hsPkgs.pkgs-errors).buildDepError "tls-extra"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }