{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "google-oauth2-jwt"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2020 - Michel Boucey";
      maintainer = "michel.boucey@gmail.com";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/google-oauth2-jwt";
      url = "";
      synopsis = "Get a signed JWT for Google Service Accounts";
      description = "This library implements the creation of the\nsigned JWT for Google Service Accounts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."RSA" or ((hsPkgs.pkgs-errors).buildDepError "RSA"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unix-time" or ((hsPkgs.pkgs-errors).buildDepError "unix-time"))
          ];
        buildable = true;
        };
      };
    }