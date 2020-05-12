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
      specVersion = "1.4";
      identifier = { name = "zeno"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "William Sonnex <will@sonnex.name>";
      author = "William Sonnex";
      homepage = "";
      url = "";
      synopsis = "An automated proof system for Haskell programs";
      description = "Zeno is an automated proof system for Haskell program\nproperties; developed at Imperial College London by\nWilliam Sonnex, Sophia Drossopoulou and Susan Eisenbach.\nIt aims to solve the general problem of equality between\ntwo Haskell terms, for any input value.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "zeno" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ];
          buildable = true;
          };
        };
      };
    }