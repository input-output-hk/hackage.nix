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
      identifier = { name = "tabl"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Daniel Lovasko";
      maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      homepage = "https://github.com/lovasko/tabl";
      url = "";
      synopsis = "Table layout";
      description = "Text.Tabl arranges multiple Text instances into a\ntable layout while providing means of alignment\nvisual decoration both horizontally and vertically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "tabl-example-users" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."tabl" or (errorHandler.buildDepError "tabl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "tabl-example-multiply" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tabl" or (errorHandler.buildDepError "tabl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "tabl-example-tictactoe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."tabl" or (errorHandler.buildDepError "tabl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "tabl-example-constants" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tabl" or (errorHandler.buildDepError "tabl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }