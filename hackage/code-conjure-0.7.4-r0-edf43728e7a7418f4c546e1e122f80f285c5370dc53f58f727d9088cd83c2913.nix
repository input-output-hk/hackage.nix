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
      identifier = { name = "code-conjure"; version = "0.7.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela";
      homepage = "https://github.com/rudymatela/conjure#readme";
      url = "";
      synopsis = "synthesize Haskell functions out of partial definitions";
      description = "Conjure is a tool that synthesizes Haskell functions out of partial definitions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
          (hsPkgs."express" or (errorHandler.buildDepError "express"))
        ];
        buildable = true;
      };
      tests = {
        "expr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."express" or (errorHandler.buildDepError "express"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            (hsPkgs."code-conjure" or (errorHandler.buildDepError "code-conjure"))
          ];
          buildable = true;
        };
        "defn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."express" or (errorHandler.buildDepError "express"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            (hsPkgs."code-conjure" or (errorHandler.buildDepError "code-conjure"))
          ];
          buildable = true;
        };
        "conjurable" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."express" or (errorHandler.buildDepError "express"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            (hsPkgs."code-conjure" or (errorHandler.buildDepError "code-conjure"))
          ];
          buildable = true;
        };
        "utils" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."express" or (errorHandler.buildDepError "express"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            (hsPkgs."code-conjure" or (errorHandler.buildDepError "code-conjure"))
          ];
          buildable = true;
        };
        "derive" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."express" or (errorHandler.buildDepError "express"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            (hsPkgs."code-conjure" or (errorHandler.buildDepError "code-conjure"))
          ];
          buildable = true;
        };
        "red" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."express" or (errorHandler.buildDepError "express"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            (hsPkgs."code-conjure" or (errorHandler.buildDepError "code-conjure"))
          ];
          buildable = true;
        };
        "factorial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."express" or (errorHandler.buildDepError "express"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            (hsPkgs."code-conjure" or (errorHandler.buildDepError "code-conjure"))
          ];
          buildable = true;
        };
      };
    };
  }