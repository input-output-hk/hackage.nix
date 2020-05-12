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
      identifier = { name = "haskey-mtl"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Henri Verroken, Steven Keuchel";
      maintainer = "steven.keuchel@gmail.com";
      author = "Henri Verroken, Steven Keuchel";
      homepage = "https://github.com/haskell-haskey";
      url = "";
      synopsis = "A monad transformer supporting Haskey transactions.";
      description = "This library provides a monad transformer supporting Haskey transactions,\nwith default lifted instances for all mtl monad transformers.\n\nFor more information on how to use this package, visit\n<https://github.com/haskell-haskey/haskey-mtl>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."haskey-btree" or (errorHandler.buildDepError "haskey-btree"))
          (hsPkgs."haskey" or (errorHandler.buildDepError "haskey"))
          ];
        buildable = true;
        };
      tests = {
        "haskey-mtl-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskey" or (errorHandler.buildDepError "haskey"))
            (hsPkgs."haskey-btree" or (errorHandler.buildDepError "haskey-btree"))
            (hsPkgs."haskey-mtl" or (errorHandler.buildDepError "haskey-mtl"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }