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
    flags = { debug = false; documentation = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Referees"; version = "0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) Pablo Couto 2014";
      maintainer = "Pablo Couto <pablo@infty.in>";
      author = "Pablo Couto <pablo@infty.in>";
      homepage = "https://github.com/pablocouto/Referees";
      url = "";
      synopsis = "A utility for computing distributions of material to review among reviewers.";
      description = "A utility for computing distributions of material to review among reviewers.\n@Referees@ takes into consideration the areas of expertise of the referees,\nthe number of items that they accept for review, the languages they\nunderstand, and the minimum and maximum number of copies we may want to\ndistribute per each item to review.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."glpk-hs" or (errorHandler.buildDepError "glpk-hs"))
          ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"));
        buildable = true;
        };
      exes = {
        "referees" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Referees" or (errorHandler.buildDepError "Referees"))
            ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"));
          buildable = true;
          };
        };
      };
    }