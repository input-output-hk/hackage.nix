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
      specVersion = "1.6";
      identifier = { name = "groundhog-inspector"; version = "0.7.0"; };
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
      };
    }