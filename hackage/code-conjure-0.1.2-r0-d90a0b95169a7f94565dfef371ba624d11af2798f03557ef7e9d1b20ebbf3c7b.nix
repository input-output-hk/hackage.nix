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
      identifier = { name = "code-conjure"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela";
      homepage = "https://github.com/rudymatela/conjure#readme";
      url = "";
      synopsis = "conjure Haskell functions out of partial definitions";
      description = "Conjure is a tool that produces Haskell functions out of partial definitions.\n\nThis is currently an experimental tool in its early stages,\ndon't expect much from its current version.\nIt is just a piece of curiosity in its current state.";
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
      };
    };
  }