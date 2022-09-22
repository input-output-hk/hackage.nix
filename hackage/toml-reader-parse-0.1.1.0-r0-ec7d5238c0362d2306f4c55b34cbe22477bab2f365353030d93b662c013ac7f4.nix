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
      identifier = { name = "toml-reader-parse"; version = "0.1.1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "https://github.com/sergv/toml-reader-parse";
      url = "";
      synopsis = "Alternative parser for TOML values produced by the toml-reader package.";
      description = "Package defines a set of parser combinators that allows analyzing arbitrary TOML structures.\nIncludes formatted errors that keep track of where in the original TOML file a value\ncame from.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."toml-reader" or (errorHandler.buildDepError "toml-reader"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-combinators" or (errorHandler.buildDepError "prettyprinter-combinators"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "toml-reader-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-combinators" or (errorHandler.buildDepError "prettyprinter-combinators"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."toml-reader" or (errorHandler.buildDepError "toml-reader"))
            (hsPkgs."toml-reader-parse" or (errorHandler.buildDepError "toml-reader-parse"))
            ];
          buildable = true;
          };
        };
      };
    }