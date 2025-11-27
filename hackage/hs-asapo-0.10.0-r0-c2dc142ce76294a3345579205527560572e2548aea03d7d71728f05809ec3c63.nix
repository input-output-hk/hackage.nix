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
      specVersion = "3.4";
      identifier = { name = "hs-asapo"; version = "0.10.0"; };
      license = "MIT";
      copyright = "2024 Philipp Middendorf";
      maintainer = "philipp.middendorf@desy.de";
      author = "Philipp Middendorf";
      homepage = "https://github.com/pmiddend/hs-asapo";
      url = "";
      synopsis = "Haskell bindings for ASAP:O";
      description = "Haskell bindings for ASAP:O, a middleware platform for high-performance data analysis. Some general notes about this project:\n\n* @newtype@ and enumerations are used liberally, to make function calls more readable and requiring less documentation (cf. <https://yveskalume.dev/boolean-blindness-dont-represent-state-with-boolean boolean blindness>)\n* For text, such as URLs, identifiers, we assume UTF-8 and use strict [Text](\"Data.Text\")\n* For data, we copy the data into a strict [ByteString](\"Data.ByteString\")\n\nThere are two interfaces available: one which does not throw exceptions, but returns a @Either Error a@, and one which throws exceptions. Both expose the same functions. It's yours to decide which one to use.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."timerep" or (errorHandler.buildDepError "timerep"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libasapo-consumer" or (errorHandler.pkgConfDepError "libasapo-consumer"))
          (pkgconfPkgs."libasapo-producer" or (errorHandler.pkgConfDepError "libasapo-producer"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."timerep" or (errorHandler.buildDepError "timerep"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hs-asapo" or (errorHandler.buildDepError "hs-asapo"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "simple-producer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-asapo" or (errorHandler.buildDepError "hs-asapo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
        "simple-consumer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-asapo" or (errorHandler.buildDepError "hs-asapo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
    };
  }