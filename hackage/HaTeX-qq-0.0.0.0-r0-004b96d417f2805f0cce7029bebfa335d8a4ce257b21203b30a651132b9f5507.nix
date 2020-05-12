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
      identifier = { name = "HaTeX-qq"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Hiromi ISHII 2015";
      maintainer = "Hiromi ISHII <konn.jinro_at_gmail.com>";
      author = "Hiromi ISHII <konn.jinro_at_gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Quasiquoters for HaTeX";
      description = "Quasiquoters for HaTeX";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
          (hsPkgs."antiquoter" or (errorHandler.buildDepError "antiquoter"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          ];
        buildable = true;
        };
      };
    }