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
      identifier = { name = "strict-types"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Jose Iborra Lopez, 2017";
      maintainer = "Pepe Iborra (pepeiborra@gmail.com)";
      author = "Pepe Iborra";
      homepage = "https://github.com/pepeiborra/strict-types";
      url = "";
      synopsis = "A type level predicate ranging over strict types";
      description = "A type class for types T where forall x :: T . rnf x = ⊥ \\<=\\> rwhnf x = ⊥";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }