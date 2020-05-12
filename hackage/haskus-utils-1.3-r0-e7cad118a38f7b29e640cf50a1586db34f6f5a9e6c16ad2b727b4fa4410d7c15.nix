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
      specVersion = "1.21";
      identifier = { name = "haskus-utils"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2018";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://docs.haskus.org/";
      url = "";
      synopsis = "Haskus utility modules";
      description = "Haskus utility modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskus-utils-types" or (errorHandler.buildDepError "haskus-utils-types"))
          (hsPkgs."haskus-utils-data" or (errorHandler.buildDepError "haskus-utils-data"))
          (hsPkgs."haskus-utils-variant" or (errorHandler.buildDepError "haskus-utils-variant"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskus-utils" or (errorHandler.buildDepError "haskus-utils"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }