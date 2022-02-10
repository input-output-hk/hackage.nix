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
      identifier = { name = "hspec-expectations-match"; version = "0.2.0.0"; };
      license = "ISC";
      copyright = "2017 CJ Affiliate by Conversant";
      maintainer = "Alexis King <lexi.lambda@gmail.com>";
      author = "Alexis King <lexi.lambda@gmail.com>";
      homepage = "https://github.com/cjdev/hspec-expectations-match#readme";
      url = "";
      synopsis = "An hspec expectation that asserts a value matches a pattern.";
      description = "This package provides expectations for use with @hspec@ that use Template\nHaskell to assert that a value matches a particular pattern.\nThe primary expectation is 'shouldMatch':\n\n>>> $([|Just True|] `shouldMatch` [p|Just _|])\n>>> $([|Nothing|] `shouldMatch` [p|Just _|])\n\nAdditionally, any bindings created by the pattern will be returned if the\npattern is successfully matched, making it easier to extract the result of\nsome assertion and use it to make further assertions.\n\n>>> $([|Just True|] `shouldMatch` [p|Just x|])\nTrue\n>>> $([|[1, 2]|] `shouldMatch` [p|[x, y]|])\n(1, 2)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      tests = {
        "hspec-expectations-th-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations-match" or (errorHandler.buildDepError "hspec-expectations-match"))
            ];
          buildable = true;
          };
        };
      };
    }