{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "oauth10a"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2016 Gatlin Johnson";
      maintainer = "gatlin@niltag.net";
      author = "Gatlin Johnson";
      homepage = "https://github.com/gatlin/oauth10a#readme";
      url = "";
      synopsis = "Simple utilities to create OAuth 1.0a headers";
      description = "Provides simple functions and types for generating OAuth 1.0a headers as\nsimply and straightforwardly as possible. If you have credentials, a request\nmethod, a url, and extra parameters, you'll get back a compliant\n'ByteString' to put in your @Authorization@ header.\nSee the README.md for more details!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          ];
        buildable = true;
        };
      tests = {
        "oauth10a-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."oauth10a" or ((hsPkgs.pkgs-errors).buildDepError "oauth10a"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }