{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aws-route53"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@memcachier.com";
      author = "Aristid Breitkreuz; AlephCloud Systems, Inc; MemCachier, Inc";
      homepage = "";
      url = "";
      synopsis = "Route53 plugin for the aws package";
      description = "Route53 plugin for the aws package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aws" or ((hsPkgs.pkgs-errors).buildDepError "aws"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."failure" or ((hsPkgs.pkgs-errors).buildDepError "failure"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          (hsPkgs."xml-hamlet" or ((hsPkgs.pkgs-errors).buildDepError "xml-hamlet"))
          ];
        buildable = true;
        };
      };
    }