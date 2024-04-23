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
      identifier = { name = "muesli"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 Călin Ardelean";
      maintainer = "Călin Ardelean <calinucs@gmail.com>";
      author = "Călin Ardelean";
      homepage = "https://github.com/clnx/muesli";
      url = "";
      synopsis = "A simple document-oriented database";
      description = "@muesli@ is an easy to use\n<https://en.wikipedia.org/wiki/Multiversion_concurrency_control MVCC>\n<https://en.wikipedia.org/wiki/Document-oriented_database document-oriented database>\nfeaturing ACID transactions, automatic index management and minimal boilerplate.\n\nImport the \"Database.Muesli.Types\" module to mark up your types for indexing,\n\"Database.Muesli.Query\" for writing and running queries,\nand \"Database.Muesli.Handle\" for database management.\nThe rest of the modules are internal, but exposed just in case.\n\nSee the README.md file for an usage example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
    };
  }