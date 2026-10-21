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
      identifier = { name = "symmetric-list"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2026 nahuel-merlo";
      maintainer = "n.peraza04@gmail.com";
      author = "nahuel-merlo";
      homepage = "https://github.com/nahuel-merlo/symmetric-list-haskell";
      url = "";
      synopsis = "Lists with efficient access to both ends";
      description = "A symmetric list stores its elements split between a front list and a\nreversed back list, giving amortized \\(\\mathcal{O}(1)\\) access to both\nends of the sequence.\n\nCompared to ordinary Haskell lists, operations on the end of the list\n(@snoc@, @last@, @init@, @unsnoc@), as well as @reverse@ and @length@,\nrun in constant (amortized) time, while keeping an interface close to\n\"Data.List\".\n\nThe main module is \"Data.SymmetricList\", designed to be imported\nqualified:\n\n> import Data.SymmetricList (SymmetricList)\n> import qualified Data.SymmetricList as SymmetricList\n\n\"Data.SymmetricList.Internal\" exposes the underlying representation and\nmakes no API stability guarantees.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "symmetric-list-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."symmetric-list" or (errorHandler.buildDepError "symmetric-list"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "symmetric-list-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."symmetric-list" or (errorHandler.buildDepError "symmetric-list"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }