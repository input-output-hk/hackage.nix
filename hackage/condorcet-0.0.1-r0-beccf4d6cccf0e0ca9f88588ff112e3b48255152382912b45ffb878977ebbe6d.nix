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
      specVersion = "1.0";
      identifier = { name = "condorcet"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Martin <martine@danga.com>";
      author = "Evan Martin";
      homepage = "http://neugierig.org/software/darcs/condorcet";
      url = "";
      synopsis = "Library for Condorcet voting";
      description = "This is a small library for determining the winner of a Condorcet election;\nfor what a Condorcet election is, see <https://secure.wikimedia.org/wikipedia/en/wiki/Condorcet_method>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }