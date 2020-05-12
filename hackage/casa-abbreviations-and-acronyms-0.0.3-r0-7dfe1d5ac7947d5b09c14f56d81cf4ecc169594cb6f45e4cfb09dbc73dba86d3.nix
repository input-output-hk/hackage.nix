{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fuzzy" or (errorHandler.buildDepError "fuzzy"))
          (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          ];
        buildable = true;
        };
      exes = {
        "casa-abbreviations-and-acronyms" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."fuzzy" or (errorHandler.buildDepError "fuzzy"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."casa-abbreviations-and-acronyms" or (errorHandler.buildDepError "casa-abbreviations-and-acronyms"))
            ];
          buildable = true;
          };
        };
      };
    }