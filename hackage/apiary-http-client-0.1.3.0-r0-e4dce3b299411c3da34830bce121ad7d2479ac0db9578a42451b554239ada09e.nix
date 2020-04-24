{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apiary-http-client"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "winterland1989@gmail.com";
      author = "winterland";
      homepage = "https://github.com/winterland1989/apiary-http-client";
      url = "";
      synopsis = "A http client for Apiary.";
      description = "A HTTP Client for Apiary, using Apiary's extension api, suitable for proxying HTTP request to backend API, with flexible APIs and streamming proxying abilities.\n\nThis module also reexport Network.HTTP.Client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."types-compat" or ((hsPkgs.pkgs-errors).buildDepError "types-compat"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."apiary" or ((hsPkgs.pkgs-errors).buildDepError "apiary"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }