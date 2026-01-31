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
      identifier = { name = "known-lists"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shapeofmatter@pm.me";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Easy type-level lists with term-level membership proofs.";
      description = "A type-level lists library for easy proof-of-membership programming.\nProvides data structures for talking about members of a list,\nas well as subsets,\nmaps,\nand traversals.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
        ];
        buildable = true;
      };
      tests = {
        "known-lists-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."known-lists" or (errorHandler.buildDepError "known-lists"))
          ];
          buildable = true;
        };
      };
    };
  }