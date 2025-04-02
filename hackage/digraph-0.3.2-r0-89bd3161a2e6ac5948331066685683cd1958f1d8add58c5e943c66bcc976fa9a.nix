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
      specVersion = "2.4";
      identifier = { name = "digraph"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 - 2025, Kadena LLC";
      maintainer = "lars@kadena.io";
      author = "Lars Kuhtz";
      homepage = "https://github.com/kadena-io/digraph";
      url = "";
      synopsis = "Directed Graphs";
      description = "Directed graphs implementation that is based on unordered-containers";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "digraph-tests" = {
          depends = [
            (hsPkgs."digraph" or (errorHandler.buildDepError "digraph"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          ];
          buildable = true;
        };
      };
    };
  }