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
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "aviation-cessna172-diagrams"; version = "0.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris, Joshua Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Joshua Morris <ɯoɔ˙lᴉɐɯƃ@llǝʞsɐɥ+sᴉɹɹoɯuɥoɾɐnɥsoɾ>";
      homepage = "https://github.com/data61/aviation-cessna172-diagrams";
      url = "";
      synopsis = "Diagrams for the Cessna 172 aircraft in aviation.";
      description = "<<http://i.imgur.com/0h9dFhl.png>>\n\nDiagrams for the Cessna 172 aircraft in aviation.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."aviation-units" or (errorHandler.buildDepError "aviation-units"))
          (hsPkgs."aviation-weight-balance" or (errorHandler.buildDepError "aviation-weight-balance"))
          (hsPkgs."aviation-cessna172-weight-balance" or (errorHandler.buildDepError "aviation-cessna172-weight-balance"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."plots" or (errorHandler.buildDepError "plots"))
          (hsPkgs."hgeometry" or (errorHandler.buildDepError "hgeometry"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
          ];
          buildable = true;
        };
      };
    };
  }