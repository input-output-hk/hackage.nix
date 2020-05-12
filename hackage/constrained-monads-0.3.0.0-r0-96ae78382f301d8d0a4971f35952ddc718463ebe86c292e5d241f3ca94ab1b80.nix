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
      identifier = { name = "constrained-monads"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2016 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/constrained-monads#readme";
      url = "";
      synopsis = "Typeclasses and instances for monads with constraints. ";
      description = "A library for monads with constraints over the types they contain. This allows set, etc to conform to the monad class. It is structured as a prelude replacement: everything that doesn't conflict with the new definitions of 'Functor', 'Monad', etc is reexported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "constrained-monads-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constrained-monads" or (errorHandler.buildDepError "constrained-monads"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }