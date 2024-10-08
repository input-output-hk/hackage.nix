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
    flags = { llvm-fast = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wordchoice"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2017 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/wordchoice#readme";
      url = "";
      synopsis = "Get word counts and distributions";
      description = "A command line tool to compute the word distribution from various types of document, converting to text with pandoc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ];
        buildable = true;
      };
      exes = {
        "wrd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wordchoice" or (errorHandler.buildDepError "wordchoice"))
          ];
          buildable = true;
        };
      };
      tests = {
        "wordchoice-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wordchoice" or (errorHandler.buildDepError "wordchoice"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "wordchoice-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."wordchoice" or (errorHandler.buildDepError "wordchoice"))
          ];
          buildable = true;
        };
      };
    };
  }