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
      identifier = { name = "htoml-parse"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "https://github.com/sergv/htoml-parse";
      url = "";
      synopsis = "Parse TOML values produced by htoml-megaparsec package.";
      description = "Package definecs set of parser combinators that allows analyzing arbitrary TOML structures.\nIncludes formatted errors that keep track of where in the original TOML file a value\ncame from.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."htoml-megaparsec" or (errorHandler.buildDepError "htoml-megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-combinators" or (errorHandler.buildDepError "prettyprinter-combinators"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }