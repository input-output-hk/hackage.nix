{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dropbox-sdk"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Kannan Goundan <kannan@cakoose.com>";
      author = "Kannan Goundan <kannan@cakoose.com>";
      homepage = "";
      url = "";
      synopsis = "A library to access the Dropbox HTTP API.";
      description = "The Dropbox HTTP API provides ways for applications to access\nusers' Dropbox accounts programmatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."urlencoded" or ((hsPkgs.pkgs-errors).buildDepError "urlencoded"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."http-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "http-enumerator"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."tls-extra" or ((hsPkgs.pkgs-errors).buildDepError "tls-extra"))
          (hsPkgs."certificate" or ((hsPkgs.pkgs-errors).buildDepError "certificate"))
          ];
        buildable = true;
        };
      };
    }