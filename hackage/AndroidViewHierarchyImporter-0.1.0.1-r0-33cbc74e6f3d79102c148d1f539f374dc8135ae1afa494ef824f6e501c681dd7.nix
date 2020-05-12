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
      identifier = {
        name = "AndroidViewHierarchyImporter";
        version = "0.1.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "2012, alpheccar";
      maintainer = "misc@alpheccar.org";
      author = "alpheccar";
      homepage = "";
      url = "";
      synopsis = "Android view hierarchy importer";
      description = "Tool to import a description of an Android view hierarchy through Abd and the Android view server.\nYou can find more documentation in the @Main@ file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "AndroidViewHierarchyImporter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."opml" or (errorHandler.buildDepError "opml"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."cmdtheline" or (errorHandler.buildDepError "cmdtheline"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }