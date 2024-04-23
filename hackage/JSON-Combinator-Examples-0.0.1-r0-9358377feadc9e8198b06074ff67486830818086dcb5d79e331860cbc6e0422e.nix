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
      specVersion = "1.2";
      identifier = { name = "JSON-Combinator-Examples"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "";
      url = "";
      synopsis = "Example uses of the JSON-Combinator library.";
      description = "Example uses of the JSON-Combinator library.\n\n/The example JSON files use a specific JSON format because of a bug in json (Text.JSON)./";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."JSONb" or (errorHandler.buildDepError "JSONb"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."JSON-Combinator" or (errorHandler.buildDepError "JSON-Combinator"))
        ];
        buildable = true;
      };
    };
  }