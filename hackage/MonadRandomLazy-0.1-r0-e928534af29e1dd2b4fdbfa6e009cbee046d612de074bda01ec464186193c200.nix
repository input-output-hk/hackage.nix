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
      identifier = { name = "MonadRandomLazy"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Norman Ramsey <nr@cs.tufts.edu>";
      author = "Norman Ramsey (following Koen Claessen)";
      homepage = "";
      url = "";
      synopsis = "Lazy monad for psuedo random-number generation.";
      description = "Support for lazy computations which consume random values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      };
    }