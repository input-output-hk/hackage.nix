{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "casa-abbreviations-and-acronyms";
        version = "0.0.3";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/casa-abbreviations-and-acronyms";
      url = "";
      synopsis = "CASA Abbreviations and Acronyms";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nCASA Abbreviations and Acronym\n\nhttps://www.casa.gov.au/about-us/standard-page/aviation-abbreviations-and-acronyms";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fuzzy" or ((hsPkgs.pkgs-errors).buildDepError "fuzzy"))
          (hsPkgs."monoid-subclasses" or ((hsPkgs.pkgs-errors).buildDepError "monoid-subclasses"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."these" or ((hsPkgs.pkgs-errors).buildDepError "these"))
          ];
        buildable = true;
        };
      exes = {
        "casa-abbreviations-and-acronyms" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."fuzzy" or ((hsPkgs.pkgs-errors).buildDepError "fuzzy"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."casa-abbreviations-and-acronyms" or ((hsPkgs.pkgs-errors).buildDepError "casa-abbreviations-and-acronyms"))
            ];
          buildable = true;
          };
        };
      };
    }