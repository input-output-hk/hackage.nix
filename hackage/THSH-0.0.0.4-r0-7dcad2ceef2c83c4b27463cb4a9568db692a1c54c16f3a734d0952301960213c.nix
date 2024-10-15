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
      specVersion = "3.4";
      identifier = { name = "THSH"; version = "0.0.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "zhicheng.miao@gmail.com";
      author = "Miao, ZhiCheng";
      homepage = "";
      url = "";
      synopsis = "A \"noDSL\" approach to mixing shell scripting with Haskell programs using Template Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."PyF" or (errorHandler.buildDepError "PyF"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
        ];
        buildable = true;
      };
      exes = {
        "thsh" = {
          depends = [
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."THSH" or (errorHandler.buildDepError "THSH"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."PyF" or (errorHandler.buildDepError "PyF"))
          ];
          buildable = true;
        };
      };
      tests = {
        "THSH-test" = {
          depends = [
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."PyF" or (errorHandler.buildDepError "PyF"))
            (hsPkgs."THSH" or (errorHandler.buildDepError "THSH"))
          ];
          buildable = true;
        };
      };
    };
  }