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
        name = "aviation-cessna172-weight-balance";
        version = "0.0.2";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2021, Tony Morris";
      maintainer = "Tony Morris, Joshua Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Joshua Morris <ɯoɔ˙lᴉɐɯƃ@llǝʞsɐɥ+sᴉɹɹoɯuɥoɾɐnɥsoɾ>";
      homepage = "https://gitlab.com/tonymorris/aviation-cessna172-weight-balance";
      url = "";
      synopsis = "Weight and Balance for the Cessna 172 aircraft in aviation.";
      description = "Weight and Balance for the Cessna 172 aircraft in aviation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."aviation-weight-balance" or (errorHandler.buildDepError "aviation-weight-balance"))
          (hsPkgs."aviation-units" or (errorHandler.buildDepError "aviation-units"))
          ];
        buildable = true;
        };
      };
    }