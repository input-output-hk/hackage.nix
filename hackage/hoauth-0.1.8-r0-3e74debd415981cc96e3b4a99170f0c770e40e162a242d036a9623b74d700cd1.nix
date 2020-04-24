{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hoauth"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Diego Souza <dsouza@bitforest.org>";
      author = "Diego Souza";
      homepage = "";
      url = "";
      synopsis = "A Haskell implementation of OAuth 1.0a protocol.";
      description = "This library implements all PLAINTEXT, HMAC-SHA1 and RSA-SHA1\nsignatures as defined in the specification 1.0. Currently it\nsupports only /consumer/ related functions, but there are plans to\nadd support /service providers/ as well.\nMore info at: <http://oauth.net/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
          (hsPkgs."RSA" or ((hsPkgs.pkgs-errors).buildDepError "RSA"))
          (hsPkgs."base64-string" or ((hsPkgs.pkgs-errors).buildDepError "base64-string"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."system-uuid" or ((hsPkgs.pkgs-errors).buildDepError "system-uuid"))
          ];
        buildable = true;
        };
      };
    }