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
      specVersion = "1.18";
      identifier = { name = "FailT"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022-2023 Alexey Kuleshevich";
      maintainer = "alexey@kuleshevi.ch";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/FailT";
      url = "";
      synopsis = "A 'FailT' monad transformer that plays well with 'MonadFail'";
      description = "Fail gracefully when stuck in a 'MonadFail'\n\n>>> runFailT (fail \"Failure!?\" >> pure \"Success!!\")\nLeft \"Failure!?\"\n>>> runFailT (fail \"Failure!?\" <|> pure \"Success!!\")\nRight \"Success!!\"\n>>> runFailT (pure [\"Success!!\"] <> fail \"Failure!?\" <> pure [\"At\", \"Last!\"])\nRight [\"Success!!\",\"At\",\"Last!\"]\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."FailT" or (errorHandler.buildDepError "FailT"))
            ];
          buildable = true;
          };
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."FailT" or (errorHandler.buildDepError "FailT"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            ];
          buildable = true;
          };
        };
      };
    }