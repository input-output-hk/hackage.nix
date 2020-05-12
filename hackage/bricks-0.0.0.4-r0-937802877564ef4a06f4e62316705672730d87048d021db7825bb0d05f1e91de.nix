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
      identifier = { name = "bricks"; version = "0.0.0.4"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/bricks#readme";
      url = "";
      synopsis = "Bricks is a lazy functional language based on Nix.";
      description = "Bricks is a lazy functional language based on Nix.\nThis package provides parsing, rendering, and\nevaluation for the Bricks language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bricks-internal" or (errorHandler.buildDepError "bricks-internal"))
          (hsPkgs."bricks-parsec" or (errorHandler.buildDepError "bricks-parsec"))
          (hsPkgs."bricks-rendering" or (errorHandler.buildDepError "bricks-rendering"))
          (hsPkgs."bricks-syntax" or (errorHandler.buildDepError "bricks-syntax"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bricks-internal" or (errorHandler.buildDepError "bricks-internal"))
            (hsPkgs."bricks-parsec" or (errorHandler.buildDepError "bricks-parsec"))
            (hsPkgs."bricks-rendering" or (errorHandler.buildDepError "bricks-rendering"))
            (hsPkgs."bricks-syntax" or (errorHandler.buildDepError "bricks-syntax"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        "evaluation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bricks" or (errorHandler.buildDepError "bricks"))
            (hsPkgs."bricks-internal" or (errorHandler.buildDepError "bricks-internal"))
            (hsPkgs."bricks-internal-test" or (errorHandler.buildDepError "bricks-internal-test"))
            (hsPkgs."bricks-parsec" or (errorHandler.buildDepError "bricks-parsec"))
            (hsPkgs."bricks-rendering" or (errorHandler.buildDepError "bricks-rendering"))
            (hsPkgs."bricks-syntax" or (errorHandler.buildDepError "bricks-syntax"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }