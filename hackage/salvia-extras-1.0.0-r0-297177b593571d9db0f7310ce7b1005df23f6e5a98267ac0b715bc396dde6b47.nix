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
      identifier = { name = "salvia-extras"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Collection of non-fundamental handlers for the Salvia web server.";
      description = "Collection of non-fundamental handlers for the Salvia web server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clevercss" or (errorHandler.buildDepError "clevercss"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."salvia" or (errorHandler.buildDepError "salvia"))
          (hsPkgs."salvia-protocol" or (errorHandler.buildDepError "salvia-protocol"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."filestore" or (errorHandler.buildDepError "filestore"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          (hsPkgs."sendfile" or (errorHandler.buildDepError "sendfile"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."c10k" or (errorHandler.buildDepError "c10k"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."threadmanager" or (errorHandler.buildDepError "threadmanager"))
          ];
        buildable = true;
        };
      };
    }