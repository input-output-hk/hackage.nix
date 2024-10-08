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
      specVersion = "1.18";
      identifier = { name = "coincident-root-loci"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2017 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Equivariant CSM classes of coincident root loci";
      description = "This library contians a set of function to compute, among\nothers, the @GL(2)@-equivariant Chern-Schwartz-MacPherson\nclasses of coincident root loci, which are subvarieties\nof the space of unordered @n@-tuples of points in the complex\nprojective line. To such an @n@-tuples we can associate\na partition of @n@ given by the multiplicities of the distinct\npoints; this stratifies the set of all @n@-tuples, and we\ncall these strata \\\"coincident root loci\\\".\nThis package is supplementary software for a forthcoming paper.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."combinat" or (errorHandler.buildDepError "combinat"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."combinat" or (errorHandler.buildDepError "combinat"))
            (hsPkgs."coincident-root-loci" or (errorHandler.buildDepError "coincident-root-loci"))
          ];
          buildable = true;
        };
      };
    };
  }