{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "csv-nptools"; version = "0.4.0"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "A collection of CSV tools";
      description = "A collection of CSV tools";
      buildType = "Simple";
      };
    components = {
      exes = {
        "csv2html" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
            (hsPkgs."tabular" or ((hsPkgs.pkgs-errors).buildDepError "tabular"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            ];
          buildable = true;
          };
        "csv2json" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."txt-sushi" or ((hsPkgs.pkgs-errors).buildDepError "txt-sushi"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            ];
          buildable = true;
          };
        "csv-add-id" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."txt-sushi" or ((hsPkgs.pkgs-errors).buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-reformat" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."txt-sushi" or ((hsPkgs.pkgs-errors).buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-tr" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."txt-sushi" or ((hsPkgs.pkgs-errors).buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-transpose" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."txt-sushi" or ((hsPkgs.pkgs-errors).buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-pad" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."txt-sushi" or ((hsPkgs.pkgs-errors).buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        };
      };
    }