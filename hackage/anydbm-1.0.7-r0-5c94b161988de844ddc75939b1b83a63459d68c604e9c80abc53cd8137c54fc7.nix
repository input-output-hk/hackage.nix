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
      specVersion = "1.0";
      identifier = { name = "anydbm"; version = "1.0.7"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2004-2008 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "";
      homepage = "http://software.complete.org/anydbm";
      url = "";
      synopsis = "Interface for DBM-like database systems";
      description = "This module provides a generic infrastructure for supporting storage\nof hash-like items with String-to-String mappings.  It can be used\nfor in-memory or on-disk storage.\n\nTwo simple backend drivers are included with this package: one\nthat is RAM-only, and one that is persistent and disk-backed.\nThe hdbc-anydbm package provides another driver, which lets you use\nsimple tables in any SQL database to provide a DBM-like interface.\nMissingPy also provides a Python driver which lets you use any\nPython anydbm driver under Haskell AnyDBM.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = false;
        };
      };
    };
  }