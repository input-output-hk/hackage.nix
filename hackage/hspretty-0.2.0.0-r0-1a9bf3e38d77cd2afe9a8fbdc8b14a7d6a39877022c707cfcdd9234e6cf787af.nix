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
      specVersion = "3.0";
      identifier = { name = "hspretty"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) Jonathan Merritt 2021";
      maintainer = "j.s.merritt@gmail.com";
      author = "Jonathan Merritt";
      homepage = "";
      url = "";
      synopsis = "My opinionated Haskell project formatter.";
      description = "This is a formatter for Haskell projects (for example, for *.cabal files and\n*.hs files) that can perform both in-place formatting and formatting checks.\nIn the background, it uses Ormolu and cabal-fmt. Please make sure that\ncabal-fmt is installed separately before running it, since it invokes\ncabal-fmt as a command-line utility.\n.\nIt is licensed under the BSD-3-Clause license to match Ormolu and cabal-fmt.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."ormolu" or (errorHandler.buildDepError "ormolu"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          ];
        buildable = true;
        };
      exes = {
        "hspretty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspretty" or (errorHandler.buildDepError "hspretty"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hspretty-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }