{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "csv-nptools"; version = "0.2.0"; };
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
        "csv2json" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."txt-sushi" or ((hsPkgs.pkgs-errors).buildDepError "txt-sushi"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
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