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
      specVersion = "1.8";
      identifier = { name = "prednote"; version = "0.18.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2013-2014 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://github.com/massysett/prednote";
      url = "";
      synopsis = "Build and evaluate trees of predicates";
      description = "Build and evaluate trees of predicates. For example, you might build\na predicate of the type Int -> Bool. You do this by assembling\nseveral predicates into a tree. You can then verbosely evaluate\nthis tree, showing why a particular result is reached.\n\nprednote also provides modules to test several subjects against a\ngiven predicate, and to parse infix or RPN expressions into a tree of\npredicates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "prednote-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }