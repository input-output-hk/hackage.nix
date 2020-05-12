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
      identifier = { name = "clifford"; version = "0.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sophie@traumapony.org";
      author = "Sophie Taylor";
      homepage = "http://github.com/spacekitteh/haskell-clifford";
      url = "";
      synopsis = "A Clifford algebra library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."permutation" or (errorHandler.buildDepError "permutation"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."converge" or (errorHandler.buildDepError "converge"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."stream-fusion" or (errorHandler.buildDepError "stream-fusion"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clifford" or (errorHandler.buildDepError "clifford"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
            ];
          buildable = true;
          };
        };
      };
    }