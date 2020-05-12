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
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "HDBC"; version = "2.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2011 John Goerzen";
      maintainer = "Nicolas Wu <nicolas.wu@gmail.com>";
      author = "John Goerzen, Nicolas Wu";
      homepage = "https://github.com/hdbc/hdbc";
      url = "";
      synopsis = "Haskell Database Connectivity";
      description = "HDBC provides an abstraction layer between Haskell programs and SQL\nrelational databases. This lets you write database code once, in\nHaskell, and have it work with any number of backend SQL databases\n(MySQL, Oracle, PostgreSQL, ODBC-compliant databases, etc.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs."base" or (errorHandler.buildDepError "base"));
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) (([
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs."base" or (errorHandler.buildDepError "base")));
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }