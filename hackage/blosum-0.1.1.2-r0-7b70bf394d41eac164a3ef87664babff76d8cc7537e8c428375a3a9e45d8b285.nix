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
      identifier = { name = "blosum"; version = "0.1.1.2"; };
      license = "GPL-2.0-only";
      copyright = "Copyright 2016 Gregory W. Schwartz";
      maintainer = "gregory.schwartz@drexel.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/blosum#readme";
      url = "";
      synopsis = "BLOSUM generator";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."fasta" or (errorHandler.buildDepError "fasta"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      exes = {
        "blosum" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blosum" or (errorHandler.buildDepError "blosum"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fasta" or (errorHandler.buildDepError "fasta"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-text" or (errorHandler.buildDepError "pipes-text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }