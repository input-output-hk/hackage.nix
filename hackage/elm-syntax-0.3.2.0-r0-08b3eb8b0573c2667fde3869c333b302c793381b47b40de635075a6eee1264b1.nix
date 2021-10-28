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
      identifier = { name = "elm-syntax"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Olle Fredriksson";
      maintainer = "fredriksson.olle@gmail.com";
      author = "Olle Fredriksson";
      homepage = "https://github.com/folq/elm-syntax#readme";
      url = "";
      synopsis = "Elm syntax and pretty-printing";
      description = "Please see the README on GitHub at <https://github.com/folq/elm-syntax#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
          (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "elm-syntax-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
            (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
            (hsPkgs."elm-syntax" or (errorHandler.buildDepError "elm-syntax"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }