{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "docusign-example"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Capital Match";
      maintainer = "dev@capital-match.com";
      author = "Jonathan Knowles";
      homepage = "https://github.com/capital-match/docusign-example#readme";
      url = "";
      synopsis = "DocuSign examples";
      description = "This package provides a basic demonstration of how to use the Haskell docusign-client package";
      buildType = "Simple";
      };
    components = {
      exes = {
        "docusign-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."docusign-base" or ((hsPkgs.pkgs-errors).buildDepError "docusign-base"))
            (hsPkgs."docusign-client" or ((hsPkgs.pkgs-errors).buildDepError "docusign-client"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
            ];
          buildable = true;
          };
        };
      };
    }