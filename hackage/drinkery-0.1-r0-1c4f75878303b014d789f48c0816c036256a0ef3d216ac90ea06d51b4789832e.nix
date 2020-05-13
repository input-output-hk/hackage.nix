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
      identifier = { name = "drinkery"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/drinkery#readme";
      url = "";
      synopsis = "Boozy streaming library";
      description = "Boozy streaming library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."drinkery" or (errorHandler.buildDepError "drinkery"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."ListT" or (errorHandler.buildDepError "ListT"))
            ];
          buildable = true;
          };
        };
      };
    }