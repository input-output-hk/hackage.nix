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
      identifier = {
        name = "haskell-stack-trace-plugin";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "2018 Shinya Yamaguchi";
      maintainer = "ingronze@gmail.com";
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
      };
    }