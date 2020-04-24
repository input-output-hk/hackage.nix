{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xlsx-tabular"; version = "0.2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Koga Kazuo";
      maintainer = "Koga Kazuo <obiwanko@me.com>";
      author = "Koga Kazuo <obiwanko@me.com>";
      homepage = "https://github.com/kkazuo/xlsx-tabular";
      url = "";
      synopsis = "Xlsx table cell value extraction utility";
      description = "\nConvenience utility to read xlsx tabular cells.\n\nYou can extract the values from xlsx files\ntable rows to JSON format by the heuristics or\nyour custom function.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."xlsx" or ((hsPkgs.pkgs-errors).buildDepError "xlsx"))
          ];
        buildable = true;
        };
      tests = {
        "xlsx-tabular-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xlsx-tabular" or ((hsPkgs.pkgs-errors).buildDepError "xlsx-tabular"))
            ];
          buildable = true;
          };
        };
      };
    }