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
      specVersion = "3.0";
      identifier = { name = "nanopass"; version = "0.0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "2022 Marseille Bounchard";
      maintainer = "marseillebd@proton.me";
      author = "Marseille Bounchard";
      homepage = "https://github.com/marseillebd/nanopass";
      url = "";
      synopsis = "Create compilers using small passes and many intermediate representations.";
      description = "Uses Template Haskell to facilitate using a vast number of intermediate representations.\nOn the one hand, it can generate data types for syntax trees based on their relationships.\nFurther, generates the boilerplate for writing transformations between related syntax trees.\n\nSee README.md for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."sexpr-parser" or (errorHandler.buildDepError "sexpr-parser"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "dumb-nanopass-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."nanopass" or (errorHandler.buildDepError "nanopass"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }