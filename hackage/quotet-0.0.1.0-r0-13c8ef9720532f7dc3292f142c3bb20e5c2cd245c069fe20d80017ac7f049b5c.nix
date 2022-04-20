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
    flags = {
      exceptions = false;
      semigroupoids = false;
      monad-control = false;
      };
    package = {
      specVersion = "2.4";
      identifier = { name = "quotet"; version = "0.0.1.0"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "amesgen@amesgen.de";
      author = "amesgen";
      homepage = "https://github.com/amesgen/quotet";
      url = "";
      synopsis = "Monad transformer for Quote from template-haskell";
      description = "A monad transformer for the @Quote@ type class from template-haskell, in spirit of the [Overloaded Quotations proposal](https://github.com/ghc-proposals/ghc-proposals/blob/master/proposals/0246-overloaded-bracket.rst) proposal implemented in GHC 9.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (pkgs.lib).optional (flags.exceptions) (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))) ++ (pkgs.lib).optionals (flags.monad-control) [
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          ];
        buildable = true;
        };
      };
    }