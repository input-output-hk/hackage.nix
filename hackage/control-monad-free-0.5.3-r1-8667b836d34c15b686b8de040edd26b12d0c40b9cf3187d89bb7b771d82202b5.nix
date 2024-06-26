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
      identifier = { name = "control-monad-free"; version = "0.5.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Luke Palmer, Pepe Iborra";
      homepage = "http://github.com/pepeiborra/control-monad-free";
      url = "";
      synopsis = "Free monads and monad transformers";
      description = "This package provides datatypes to construct Free monads,\nFree monad transformers, and useful instances. In addition it\nprovides the constructs to avoid quadratic complexity of left\nassociative bind, as explained in:\n\n* Janis Voigtlander, /Asymptotic Improvement of Computations over Free Monads, MPC'08/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }