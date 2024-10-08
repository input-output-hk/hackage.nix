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
      specVersion = "1.8";
      identifier = { name = "remote-debugger"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kurbatsky@gmail.com";
      author = "";
      homepage = "https://github.com/octomarat/HaskellDebugger";
      url = "";
      synopsis = "Interface to ghci debugger";
      description = "Wraper to GHC debugger API allowing debugging throught socket. Used in haskell-idea-plugin.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "remote-debugger" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
          ];
          buildable = true;
        };
      };
    };
  }