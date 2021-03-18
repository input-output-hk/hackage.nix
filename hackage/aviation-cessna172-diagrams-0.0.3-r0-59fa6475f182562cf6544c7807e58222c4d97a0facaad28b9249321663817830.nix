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
      identifier = { name = "aviation-cessna172-diagrams"; version = "0.0.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris, Joshua Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Joshua Morris <ɯoɔ˙lᴉɐɯƃ@llǝʞsɐɥ+sᴉɹɹoɯuɥoɾɐnɥsoɾ>";
      homepage = "https://gitlab.com/tonymorris/aviation-cessna172-diagrams";
      url = "";
      synopsis = "Diagrams for the Cessna 172 aircraft in aviation.";
      description = "Diagrams for the Cessna 172 aircraft in aviation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."plots" or (errorHandler.buildDepError "plots"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."hgeometry" or (errorHandler.buildDepError "hgeometry"))
          (hsPkgs."hgeometry-combinatorial" or (errorHandler.buildDepError "hgeometry-combinatorial"))
          (hsPkgs."aviation-units" or (errorHandler.buildDepError "aviation-units"))
          (hsPkgs."aviation-weight-balance" or (errorHandler.buildDepError "aviation-weight-balance"))
          (hsPkgs."aviation-cessna172-weight-balance" or (errorHandler.buildDepError "aviation-cessna172-weight-balance"))
          ];
        buildable = true;
        };
      };
    }