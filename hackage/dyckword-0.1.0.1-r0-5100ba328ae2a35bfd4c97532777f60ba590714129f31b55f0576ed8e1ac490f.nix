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
      identifier = { name = "dyckword"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Johannes Hildén";
      maintainer = "johannes@isomorphic.co";
      author = "Johannes Hildén";
      homepage = "https://github.com/johanneshilden/dyckword#readme";
      url = "";
      synopsis = "A library for working with binary Dyck words.";
      description = "The binary Dyck language consists of all strings of evenly balanced left\nand right parentheses, brackets, or some other symbols, together with the\n/empty/ word. Words in this language are known as /Dyck words/, some\nexamples of which are @()()()@, @(())((()))@, and @((()()))()@.\n\nThe counting sequence associated with the Dyck language is the\n/Catalan numbers/, who describe properties of a great number of\ncombinatorial objects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."exact-combinatorics" or (errorHandler.buildDepError "exact-combinatorics"))
        ];
        buildable = true;
      };
      tests = {
        "dyckword-testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."dyckword" or (errorHandler.buildDepError "dyckword"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          ];
          buildable = true;
        };
      };
    };
  }