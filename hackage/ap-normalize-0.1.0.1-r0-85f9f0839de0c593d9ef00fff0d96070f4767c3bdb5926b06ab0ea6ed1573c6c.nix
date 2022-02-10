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
    flags = { test-with-clang = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ap-normalize"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Li-yao Xia 2020";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "";
      url = "";
      synopsis = "Self-normalizing applicative expressions";
      description = "An applicative functor transformer to normalize expressions using @(\\<$>)@,\n@(\\<*>)@, and @pure@ into a linear list of actions.\nSee \"ApNormalize\" to get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "example-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
            (hsPkgs."ap-normalize" or (errorHandler.buildDepError "ap-normalize"))
            ];
          buildable = true;
          };
        "assoc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."ap-normalize" or (errorHandler.buildDepError "ap-normalize"))
            ];
          buildable = true;
          };
        };
      };
    }