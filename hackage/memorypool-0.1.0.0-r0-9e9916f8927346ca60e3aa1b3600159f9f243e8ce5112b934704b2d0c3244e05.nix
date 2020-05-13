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
      identifier = { name = "memorypool"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Lennart Spitzner";
      maintainer = "lsp@informatik.uni-kiel.de";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/memorypool";
      url = "";
      synopsis = "basic memory pool outside of haskell heap/GC";
      description = "See Readme";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unsafe" or (errorHandler.buildDepError "unsafe"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."void" or (errorHandler.buildDepError "void"));
        buildable = true;
        };
      };
    }