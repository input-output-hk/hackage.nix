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
    flags = { terminfo = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "expresso"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@timphilipwilliams.com";
      author = "Tim Williams";
      homepage = "";
      url = "";
      synopsis = "A simple expressions language based on row types";
      description = "Expresso is a minimal statically-typed functional programming language, designed with embedding and/or extensibility in mind.\n\nPossible use cases for such a minimal language include configuration (à la Nix), data exchange (à la JSON) or even a starting point for a custom external DSL.\n\nPlease refer to README.md for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
          ] ++ (pkgs.lib).optional (!system.isWindows && flags.terminfo) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
        buildable = true;
        };
      exes = {
        "expresso" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ] ++ (pkgs.lib).optional (!system.isWindows && flags.terminfo) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
          buildable = true;
          };
        };
      tests = {
        "test-expresso" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."expresso" or (errorHandler.buildDepError "expresso"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ] ++ (pkgs.lib).optional (!system.isWindows && flags.terminfo) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
          buildable = true;
          };
        };
      };
    }