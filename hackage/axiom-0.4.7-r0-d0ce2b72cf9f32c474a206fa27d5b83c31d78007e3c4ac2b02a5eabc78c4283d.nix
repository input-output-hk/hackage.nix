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
      identifier = { name = "axiom"; version = "0.4.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "https://github.com/transient-haskell/axiom";
      url = "";
      synopsis = "Web EDSL for running in browsers and server nodes using transient";
      description = "Client-and Server-side Haskell framework that compiles to javascript with the GHCJS compiler and run over Transient.  See homepage";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transient" or (errorHandler.buildDepError "transient"))
          (hsPkgs."transient-universe" or (errorHandler.buildDepError "transient-universe"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ghcjs-perch" or (errorHandler.buildDepError "ghcjs-perch"))
          ] ++ (if compiler.isGhcjs && (compiler.version).ge "0.1"
          then [
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            ]
          else [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]);
        buildable = true;
        };
      };
    }