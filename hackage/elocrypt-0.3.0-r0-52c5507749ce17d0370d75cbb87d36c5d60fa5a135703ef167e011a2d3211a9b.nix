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
      identifier = { name = "elocrypt"; version = "0.3.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright: (c) 2015 Sean Gillespie";
      maintainer = "sean@mistersg.net";
      author = "Sean Gillespie";
      homepage = "https://www.github.com/sgillespie/elocrypt";
      url = "";
      synopsis = "Generate easy-to-remember, hard-to-guess passwords";
      description = "Generates pronounceable, hard-to-guess passwords.. like, harder than\nVince Carter's need cartilage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
      exes = {
        "elocrypt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."elocrypt" or (errorHandler.buildDepError "elocrypt"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."elocrypt" or (errorHandler.buildDepError "elocrypt"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
          ];
          buildable = true;
        };
      };
    };
  }