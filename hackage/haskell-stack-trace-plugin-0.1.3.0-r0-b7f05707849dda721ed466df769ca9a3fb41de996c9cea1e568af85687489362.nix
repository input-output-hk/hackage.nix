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
    flags = { dev = false; };
    package = {
      specVersion = "2.4";
      identifier = {
        name = "haskell-stack-trace-plugin";
        version = "0.1.3.0";
        };
      license = "MIT";
      copyright = "2018-2021 Shinya Yamaguchi";
      maintainer = "a@wado.dev";
      author = "Shinya Yamaguchi";
      homepage = "https://github.com/waddlaw/haskell-stack-trace-plugin";
      url = "";
      synopsis = "haskell-stack-trace-plugin";
      description = "This plugin allow implicitly add HasCallStack class to every top-level function for all module. Hence, we can to get completely continuous call stack.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-stack-trace-plugin" or (errorHandler.buildDepError "haskell-stack-trace-plugin"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }