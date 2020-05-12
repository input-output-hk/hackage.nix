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
      identifier = { name = "ghcjs-hplay"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gomez Corona";
      homepage = "https://github.com/agocorona/ghcjs-hplay";
      url = "";
      synopsis = "client-side Web EDSL for transient nodes running in the Web browser";
      description = "client-side haskell framework that compiles to javascript with the ghcjs compiler and run over transient. See homepage";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if compiler.isGhcjs && (compiler.version).ge "0.1"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transient" or (errorHandler.buildDepError "transient"))
            (hsPkgs."transient-universe" or (errorHandler.buildDepError "transient-universe"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ghcjs-perch" or (errorHandler.buildDepError "ghcjs-perch"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transient" or (errorHandler.buildDepError "transient"))
            (hsPkgs."transient-universe" or (errorHandler.buildDepError "transient-universe"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ghcjs-perch" or (errorHandler.buildDepError "ghcjs-perch"))
            ];
        buildable = true;
        };
      };
    }