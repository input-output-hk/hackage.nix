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
      identifier = { name = "metar"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018-2026, Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@sıɹɹoɯʇ>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@sıɹɹoɯʇ>";
      homepage = "https://github.com/tonymorris/metar";
      url = "";
      synopsis = "METAR from BOM (Australia) with NOAA fallback";
      description = "Obtain METAR observations. Australian aerodromes (ICAO codes beginning with Y)\nare fetched from the Bureau of Meteorology; other codes are fetched from NOAA.\n\n<<https://i.imgur.com/VGTogB8.gif>>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
        ];
        buildable = true;
      };
      exes = {
        "metar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."metar" or (errorHandler.buildDepError "metar"))
          ];
          buildable = true;
        };
      };
    };
  }