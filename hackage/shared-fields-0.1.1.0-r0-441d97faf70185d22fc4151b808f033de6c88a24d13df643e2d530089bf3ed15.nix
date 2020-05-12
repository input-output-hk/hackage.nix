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
      identifier = { name = "shared-fields"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fraser.m.murray@gmail.com";
      author = "Fraser Murray";
      homepage = "http://github.com/intolerable/shared-fields";
      url = "";
      synopsis = "a tiny library for using shared lens fields";
      description = "A simple single-module library for creating lens field typeclasses in a way that allows them to be shared between modules.\nBy default, lens' @makeFields@ creates a new class if it can't find a matching one in scope. This means that if you try to @makeFields@ records in different modules without importing one module into the other, you'll get conflicting class definitions rather than a single lens which functions with both records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."shared-fields" or (errorHandler.buildDepError "shared-fields"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }