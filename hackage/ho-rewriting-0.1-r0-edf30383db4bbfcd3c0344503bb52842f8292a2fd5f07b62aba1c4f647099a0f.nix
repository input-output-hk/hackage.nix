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
      identifier = { name = "ho-rewriting"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/ho-rewriting";
      url = "";
      synopsis = "Generic rewrite rules with safe treatment of variables and binders";
      description = "This package gives a generic implementation of higher-order\nrewriting. The main idea is to use techniques from embedded\ndomain-specific languages to offer an interface which is\nboth safe and syntactically appealing.\n\nSome examples are found in the @examples@ directory. For\nmore information, see\n\"Lightweight Higher-Order Rewriting in Haskell\" (presented at TFP 2015):\n\n* Paper: <http://www.cse.chalmers.se/~emax/documents/axelsson2015lightweight_DRAFT.pdf>\n\n* Slides: <http://www.cse.chalmers.se/~emax/documents/axelsson2015lightweight_slides.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."compdata" or (errorHandler.buildDepError "compdata"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."patch-combinators" or (errorHandler.buildDepError "patch-combinators"))
          ];
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."compdata" or (errorHandler.buildDepError "compdata"))
            (hsPkgs."ho-rewriting" or (errorHandler.buildDepError "ho-rewriting"))
            (hsPkgs."patch-combinators" or (errorHandler.buildDepError "patch-combinators"))
            ];
          buildable = true;
          };
        };
      };
    }