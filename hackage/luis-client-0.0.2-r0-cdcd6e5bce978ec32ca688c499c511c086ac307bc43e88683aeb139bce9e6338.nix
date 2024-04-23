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
      identifier = { name = "luis-client"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Micxjo Funkcio";
      maintainer = "Micxjo Funkcio <micxjo@fastmail.com>";
      author = "Micxjo Funkcio <micxjo@fastmail.com>";
      homepage = "https://github.com/micxjo/hs-luis-client";
      url = "";
      synopsis = "An unofficial client for the LUIS NLP service.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }