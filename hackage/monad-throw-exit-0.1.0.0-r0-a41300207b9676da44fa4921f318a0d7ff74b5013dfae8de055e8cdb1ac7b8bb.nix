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
    flags = { build-example-command = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "monad-throw-exit"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2021 YAMAMOTO Yuji";
      maintainer = "igrep@n.email.ne.jp";
      author = "YAMAMOTO Yuji";
      homepage = "https://github.com/igrep/monad-throw-exit";
      url = "";
      synopsis = "Functions to exit the program anywhere in MonadThrow monads.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
        ];
        buildable = true;
      };
      exes = {
        "monad-throw-exit-example-command" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-throw-exit" or (errorHandler.buildDepError "monad-throw-exit"))
          ];
          buildable = if flags.build-example-command then true else false;
        };
      };
      tests = {
        "monad-throw-exit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-throw-exit" or (errorHandler.buildDepError "monad-throw-exit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.monad-throw-exit.components.exes.monad-throw-exit-example-command or (pkgs.buildPackages.monad-throw-exit-example-command or (errorHandler.buildToolDepError "monad-throw-exit:monad-throw-exit-example-command")))
          ];
          buildable = true;
        };
      };
    };
  }