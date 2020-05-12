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
    flags = { sqlite = true; postgresql = false; mysql = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "groundhog-inspector"; version = "0.10.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "http://github.com/lykahb/groundhog";
      url = "";
      synopsis = "Type-safe datatype-database mapping library.";
      description = "This library analyzes database tables and creates corresponding datatypes and their mappings for Groundhog <https://www.fpcomplete.com/user/lykahb/groundhog>. See examples at <https://github.com/lykahb/groundhog/tree/master/groundhog-inspector/examples>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."groundhog" or (errorHandler.buildDepError "groundhog"))
          (hsPkgs."groundhog-th" or (errorHandler.buildDepError "groundhog-th"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      exes = {
        "groundhog_inspector" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."groundhog" or (errorHandler.buildDepError "groundhog"))
            (hsPkgs."groundhog-th" or (errorHandler.buildDepError "groundhog-th"))
            (hsPkgs."groundhog-inspector" or (errorHandler.buildDepError "groundhog-inspector"))
            ] ++ (pkgs.lib).optional (flags.sqlite) (hsPkgs."groundhog-sqlite" or (errorHandler.buildDepError "groundhog-sqlite"))) ++ (pkgs.lib).optional (flags.postgresql) (hsPkgs."groundhog-postgresql" or (errorHandler.buildDepError "groundhog-postgresql"))) ++ (pkgs.lib).optional (flags.mysql) (hsPkgs."groundhog-mysql" or (errorHandler.buildDepError "groundhog-mysql"));
          buildable = true;
          };
        };
      };
    }