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
      specVersion = "1.12";
      identifier = { name = "storable-hetero-list"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/storable-hetero-list#readme";
      url = "";
      synopsis = "about Storable and Hetero list";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/storable-hetero-list#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
          (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
        ];
        buildable = true;
      };
      tests = {
        "storable-hetero-list-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
            (hsPkgs."storable-hetero-list" or (errorHandler.buildDepError "storable-hetero-list"))
            (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
          ];
          buildable = true;
        };
      };
    };
  }