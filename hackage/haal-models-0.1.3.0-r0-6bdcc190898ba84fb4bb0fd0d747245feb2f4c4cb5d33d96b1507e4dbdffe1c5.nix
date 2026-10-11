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
      specVersion = "2.2";
      identifier = { name = "haal-models"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Stefanos Anagnostou";
      maintainer = "steve.anunknown@gmail.com";
      author = "Stefanos Anagnostou";
      homepage = "https://github.com/steve-anunknown/haal#readme";
      url = "";
      synopsis = "Pre-built Mealy automaton models for haal.";
      description = "A collection of real-world Mealy automaton models (DTLS, MQTT, TCP, TLS) bundled for use with the haal library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haal" or (errorHandler.buildDepError "haal"))
        ];
        buildable = true;
      };
      benchmarks = {
        "haal-models-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."haal" or (errorHandler.buildDepError "haal"))
            (hsPkgs."haal-models" or (errorHandler.buildDepError "haal-models"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }