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
      specVersion = "2.2";
      identifier = { name = "crux"; version = "0.8.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Galois, Inc. 2018-2022";
      maintainer = "rscott@galois.com, kquick@galois.com, langston@galois.com";
      author = "sweirich@galois.com";
      homepage = "";
      url = "";
      synopsis = "Simple top-level library for Crucible Simulation";
      description = "The Crux library provides the common elements for running a Crucible\nsimulation on specific source files, with various options.  This\nlibrary is used by specific instances of Crux tools that provide a\ncommand-line interface to Crucible-based simulation and\nverification, usually by embedding verification specifications in\nthe source language.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bv-sized" or (errorHandler.buildDepError "bv-sized"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."crucible" or (errorHandler.buildDepError "crucible"))
          (hsPkgs."crucible-debug" or (errorHandler.buildDepError "crucible-debug"))
          (hsPkgs."crucible-syntax" or (errorHandler.buildDepError "crucible-syntax"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."githash" or (errorHandler.buildDepError "githash"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."libBF" or (errorHandler.buildDepError "libBF"))
          (hsPkgs."lumberjack" or (errorHandler.buildDepError "lumberjack"))
          (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
          (hsPkgs."simple-get-opt" or (errorHandler.buildDepError "simple-get-opt"))
          (hsPkgs."config-value" or (errorHandler.buildDepError "config-value"))
          (hsPkgs."config-schema" or (errorHandler.buildDepError "config-schema"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."rme-what4" or (errorHandler.buildDepError "rme-what4"))
        ];
        buildable = true;
      };
    };
  }