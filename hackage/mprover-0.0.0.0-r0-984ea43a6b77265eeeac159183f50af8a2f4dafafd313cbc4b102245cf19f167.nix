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
      specVersion = "1.6";
      identifier = { name = "mprover"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Procter <amp269@mail.missouri.edu>";
      author = "Adam Procter and Aaron Stump";
      homepage = "";
      url = "";
      synopsis = "Simple equational reasoning for a Haskell-ish language";
      description = "MProver is a proof checker for equational reasoning in a Haskell-like language.\nThis is an extremely preliminary release, so don't expect it to be terribly useful just yet!";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."unbound" or (errorHandler.buildDepError "unbound"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }