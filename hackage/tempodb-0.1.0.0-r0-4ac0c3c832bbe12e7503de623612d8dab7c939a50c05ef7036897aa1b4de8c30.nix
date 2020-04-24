{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tempodb"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2013 Parnell Springmeyer";
      maintainer = "parnell@ixmat.us";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/hs-tempodb";
      url = "";
      synopsis = "A small Haskell wrapper around the TempoDB api.";
      description = "TempoDB is a time-series database as-a-service with a\nrobust REST API. This module provides a simple API wrapper\nto perform all of the primary requests to TempoDB.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }