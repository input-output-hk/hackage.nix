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
      specVersion = "3.0";
      identifier = { name = "repl-alliance"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aaronallen8455@gmail.com";
      author = "Aaron Allen";
      homepage = "";
      url = "";
      synopsis = "Currated set of plugins for REPL based development";
      description = "Currated set of plugins for REPL based development providing some IDE-like functionality";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."pinned-warnings" or (errorHandler.buildDepError "pinned-warnings"))
          (hsPkgs."auto-extract" or (errorHandler.buildDepError "auto-extract"))
          (hsPkgs."auto-export" or (errorHandler.buildDepError "auto-export"))
          (hsPkgs."auto-split" or (errorHandler.buildDepError "auto-split"))
          (hsPkgs."auto-import" or (errorHandler.buildDepError "auto-import"))
          (hsPkgs."monoidal-plugins" or (errorHandler.buildDepError "monoidal-plugins"))
          (hsPkgs."ghci-quickfix" or (errorHandler.buildDepError "ghci-quickfix"))
        ];
        buildable = true;
      };
    };
  }