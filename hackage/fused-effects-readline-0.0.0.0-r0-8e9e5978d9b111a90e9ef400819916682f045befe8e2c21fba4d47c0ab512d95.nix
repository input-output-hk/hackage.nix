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
      specVersion = "2.2";
      identifier = { name = "fused-effects-readline"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Rob Rix";
      maintainer = "rob.rix@me.com";
      author = "Rob Rix";
      homepage = "https://github.com/fused-effects/fused-effects-readline";
      url = "";
      synopsis = "A readline-like effect and carrier for fused-effects";
      description = "A readline-like effect and carrier for fused-effects, using haskeline under the hood";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fused-effects-readline" or (errorHandler.buildDepError "fused-effects-readline"))
          ];
          buildable = true;
        };
      };
    };
  }