{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "OpenAFP-Utils"; version = "1.4.1.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "Assorted utilities to work with AFP data streams";
      description = "Assorted utilities to work with AFP data streams";
      buildType = "Simple";
      };
    components = {
      exes = {
        "afp2line2pdf" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."line2pdf" or ((hsPkgs.pkgs-errors).buildDepError "line2pdf"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "afp-olndump" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            ];
          buildable = true;
          };
        "afp-tledump" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            ];
          buildable = true;
          };
        "afp-dump" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
            (hsPkgs."text-locale-encoding" or ((hsPkgs.pkgs-errors).buildDepError "text-locale-encoding"))
            ];
          buildable = true;
          };
        "afp-page" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "afp-replace" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "afp-scanudc" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        "afp-split" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "afp-split-scb" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "afp-split-tcb" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        "afp-type" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "afp-udcfix" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            ];
          buildable = true;
          };
        "afp-validate" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "afp2line" = {
          depends = [
            (hsPkgs."OpenAFP" or ((hsPkgs.pkgs-errors).buildDepError "OpenAFP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }