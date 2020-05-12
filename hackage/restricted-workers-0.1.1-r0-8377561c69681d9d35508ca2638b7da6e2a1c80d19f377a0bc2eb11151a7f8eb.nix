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
      identifier = { name = "restricted-workers"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 ";
      maintainer = "difrumin@gmail.com";
      author = "Dan Frumin";
      homepage = "https://github.com/co-dan/interactive-diagrams/wiki/Restricted-Workers";
      url = "";
      synopsis = "Running worker processes under system resource restrictions";
      description = "This library provides an abstract interface for\nrunning various kinds of workers under resource\nrestrictions. It was originally developed as part\nof the interactive-diagrams\n(<http://github.com/co-dan/interactive-diagrams>)\nproject. To read more about the idia behind the\nlibrary check out my GSoC report:\n<http://parenz.wordpress.com/2013/07/15/interactive-diagrams-gsoc-progress-report/>.\n\nThe library provides a convenient way of running worker processes,\nsaving data obtained by the workers at start-up, a simple pool\nabstraction and a configurable security and resource limitations.\nPlease consult\n<https://github.com/co-dan/interactive-diagrams/tree/master/restricted-workers/README.md>\nand\n<https://github.com/co-dan/interactive-diagrams/wiki/Restricted-Workers>\nfor more details.\n\n/Warning/: this library requires SELinux to\nfunction";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."selinux" or (errorHandler.buildDepError "selinux"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }