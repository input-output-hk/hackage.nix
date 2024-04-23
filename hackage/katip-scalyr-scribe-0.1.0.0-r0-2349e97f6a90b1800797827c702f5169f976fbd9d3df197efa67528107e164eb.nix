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
      identifier = { name = "katip-scalyr-scribe"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Simon Hafner";
      maintainer = "hafnersimon@gmail.com";
      author = "Simon Hafner";
      homepage = "https://github.com/reactormonk/katip-scalyr-scribe#readme";
      url = "";
      synopsis = "A katip scribe for logging to json";
      description = "Please see the README on Github at <https://github.com/reactormonk/katip-scalyr-scribe#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."katip" or (errorHandler.buildDepError "katip"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "katip-json-scribe-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."katip" or (errorHandler.buildDepError "katip"))
            (hsPkgs."katip-scalyr-scribe" or (errorHandler.buildDepError "katip-scalyr-scribe"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }