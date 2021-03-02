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
      specVersion = "1.0";
      identifier = { name = "hybrid"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) David Waern, Rickard Nilsson";
      maintainer = "David Waern <davve@dtek.chalmers.se>";
      author = "David Waern, Rickard Nilsson";
      homepage = "http://repos.mine.nu/davve/darcs/hybrid";
      url = "";
      synopsis = "A implementation of a type-checker for Lambda-H";
      description = "We have made an implementation of the language Lambda-H,\ndescribed in the paper \"Hybrid Type Checking\" by Cormac Flanagan, which uses a\nhybrid type checking system.\nWe have tried to keep our implementation as close as possible to the language\ndefined in Flanagan's paper. The result should be seen as a proof-of-concept,\nand an exercise in implementing a hybrid type checker for a language with\nadvanced type specifications.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hybrid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }