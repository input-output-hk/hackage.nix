{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc-csv2table"; version = "1.0.6"; };
      license = "MIT";
      copyright = "(c) 2015 Wasif Hasan Baig";
      maintainer = "Wasif Hasan Baig <pr.wasif@gmail.com>";
      author = "Wasif Hasan Baig <pr.wasif@gmail.com>";
      homepage = "https://github.com/baig/pandoc-csv2table-filter";
      url = "";
      synopsis = "Convert CSV to Pandoc Table Markdown";
      description = "A Pandoc filter that replaces image inline or fenced code\nblocks with pandoc table markdown. CSV contents will be\nparsed by the pandoc markdown reader.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
          ];
        buildable = true;
        };
      exes = {
        "pandoc-csv2table" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."pandoc-csv2table" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-csv2table"))
            ];
          buildable = true;
          };
        };
      };
    }