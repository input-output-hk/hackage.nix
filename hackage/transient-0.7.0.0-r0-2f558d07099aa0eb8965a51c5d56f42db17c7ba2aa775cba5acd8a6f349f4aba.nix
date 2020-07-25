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
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "transient"; version = "0.7.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "https://github.com/transient-haskell/transient";
      url = "";
      synopsis = "composing programs with multithreading, events and distributed computing";
      description = "See <http://github.com/agocorona/transient>\nDistributed primitives are in the transient-universe package. Web primitives are in the axiom package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "test-transient" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && (compiler.version).ge "0.1")) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }