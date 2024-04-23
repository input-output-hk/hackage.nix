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
      identifier = { name = "existential"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Simon Hudon";
      maintainer = "simon.hudon@gmail.com";
      author = "Simon Hudon";
      homepage = "https://bitbucket.org/cipher2048/existential/wiki/Home";
      url = "";
      synopsis = "A library for existential types";
      description = "The library defines the type Cell and Cell1 uses Constraint kinds to so that it can stand for any existential type. Combinators and lenses of various types are built on top of 'Cell' and 'Cell1'";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ];
        buildable = true;
      };
      exes = {
        "example-Eq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."existential" or (errorHandler.buildDepError "existential"))
          ];
          buildable = true;
        };
      };
    };
  }