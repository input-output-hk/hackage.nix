{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "template-toolkit"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "kobargh@gmail.com";
      author = "Dzianis Kabanau";
      homepage = "https://github.com/kobargh/template-toolkit";
      url = "";
      synopsis = "Template Toolkit implementation for Haskell";
      description = "Template Toolkit is a template processing system originally written in Perl by Andy Wardley.\nThis haskell implementation includes such features as:\nscalar, array, hash variables, variable interpolation,\nconditional directives,\nloops and loop controls,\nexternal templates and internal blocks processing,\nlots of virtual methods and filters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."regex-pcre-builtin" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre-builtin"))
          (hsPkgs."pcre-utils" or ((hsPkgs.pkgs-errors).buildDepError "pcre-utils"))
          (hsPkgs."uri-encode" or ((hsPkgs.pkgs-errors).buildDepError "uri-encode"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          ];
        buildable = true;
        };
      };
    }