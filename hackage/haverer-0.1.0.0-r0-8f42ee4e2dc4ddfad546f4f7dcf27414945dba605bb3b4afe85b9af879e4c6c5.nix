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
      identifier = { name = "haverer"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "Jonathan M. Lange";
      maintainer = "jml@mumak.net";
      author = "Jonathan M. Lange <jml@mumak.net>";
      homepage = "";
      url = "";
      synopsis = "Implementation of the rules of Love Letter";
      description = "Implementation of the rules of Love Letter";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "haverer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haverer" or (errorHandler.buildDepError "haverer"))
            (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."haverer" or (errorHandler.buildDepError "haverer"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }