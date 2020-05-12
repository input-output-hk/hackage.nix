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
      specVersion = "1.2";
      identifier = { name = "gsl-random-fu"; version = "0.0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/gsl-random-fu";
      url = "";
      synopsis = "Instances for using gsl-random with random-fu";
      description = "Instances for using gsl-random's RNG type as a\nrandom-fu RandomSource.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."gsl-random" or (errorHandler.buildDepError "gsl-random"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }