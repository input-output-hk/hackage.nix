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
      specVersion = "1.22";
      identifier = { name = "fungll-combinators"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 L. Thomas van Binsbergen";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen";
      homepage = "";
      url = "";
      synopsis = "GLL parser with simple combinator interface ";
      description = "The package fungll-combinators provides generalised top-down parsing combinators according to the\nFUNGLL parsing algorithm [Van Binsbergen et al. 2018].\n\nPlease email any questions, comments and suggestions to the\nmaintainer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."gll" or (errorHandler.buildDepError "gll"))
          ];
        buildable = true;
        };
      };
    }