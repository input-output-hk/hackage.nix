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
      identifier = { name = "rsi-break"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "ruben.astud@gmail.com";
      author = "Ruben Astudillo";
      homepage = "https://github.com/RubenAstudillo/rsi-break";
      url = "";
      synopsis = "Let your mind know that your hands need a rest!";
      description = "Quick pomodoro style timer so you hands get a rest interval.\n\n* Health advice\n\nThis is a tool but not a cure. Physical therapy with an specialist can give\nyou a window of time where you are free of pain. Then exercise is the long\nterm solution. I am following this path, ask me in 3 years if it worked :-)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."config-ini" or (errorHandler.buildDepError "config-ini"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."monomer" or (errorHandler.buildDepError "monomer"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
        ];
        buildable = true;
      };
      exes = {
        "rsi-break" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rsi-break" or (errorHandler.buildDepError "rsi-break"))
          ];
          buildable = true;
        };
        "rsi-break-popup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monomer" or (errorHandler.buildDepError "monomer"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
      tests = {
        "rsi-break-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rsi-break" or (errorHandler.buildDepError "rsi-break"))
          ];
          buildable = true;
        };
      };
    };
  }