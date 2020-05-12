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
      identifier = { name = "module-management"; version = "0.9.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "https://src.seereason.com/module-management";
      url = "";
      synopsis = "Clean up module imports, split and merge modules";
      description = "Clean up module imports, split and merge modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."applicative-extras" or (errorHandler.buildDepError "applicative-extras"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."set-extra" or (errorHandler.buildDepError "set-extra"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
        buildable = true;
        };
      };
    }