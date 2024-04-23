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
      specVersion = "1.8";
      identifier = { name = "uAgda"; version = "1.0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "A simplistic dependently-typed language with parametricity.";
      description = "uAgda implements an experimental dependently-typed language\n(and proof assistant by the Curry-Howard isomorphism). The\ngoal of the project is twofold:\n\n1. Experiment with a minimalistic language that is strong enough to\nprogram and reason in.\n\n2. Give a simple implementation of its type-checker (ours is ~200 lines).\n\nSee the share/tutorial directory for how to get started.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "uAgda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."BNFC-meta" or (errorHandler.buildDepError "BNFC-meta"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
          ];
          buildable = true;
        };
      };
    };
  }