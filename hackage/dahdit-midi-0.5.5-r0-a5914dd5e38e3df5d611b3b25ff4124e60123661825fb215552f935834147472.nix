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
      identifier = { name = "dahdit-midi"; version = "0.5.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2023 Eric Conlon";
      maintainer = "ejconlon@gmail.com";
      author = "Eric Conlon";
      homepage = "https://github.com/ejconlon/dahdit#readme";
      url = "";
      synopsis = "MIDI and OSC parsing/printing with dahdit";
      description = "Please see the README on GitHub at <https://github.com/ejconlon/dahdit#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dahdit" or (errorHandler.buildDepError "dahdit"))
          (hsPkgs."data-sword" or (errorHandler.buildDepError "data-sword"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."nanotime" or (errorHandler.buildDepError "nanotime"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "dahdit-midi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dahdit" or (errorHandler.buildDepError "dahdit"))
            (hsPkgs."dahdit-midi" or (errorHandler.buildDepError "dahdit-midi"))
            (hsPkgs."dahdit-test" or (errorHandler.buildDepError "dahdit-test"))
            (hsPkgs."data-sword" or (errorHandler.buildDepError "data-sword"))
            (hsPkgs."daytripper" or (errorHandler.buildDepError "daytripper"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."falsify" or (errorHandler.buildDepError "falsify"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."nanotime" or (errorHandler.buildDepError "nanotime"))
            (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }