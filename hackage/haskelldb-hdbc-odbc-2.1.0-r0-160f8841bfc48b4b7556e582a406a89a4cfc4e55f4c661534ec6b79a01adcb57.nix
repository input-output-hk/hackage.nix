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
      identifier = { name = "haskelldb-hdbc-odbc"; version = "2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "http://trac.haskell.org/haskelldb";
      url = "";
      synopsis = "HaskellDB support for the HDBC ODBC driver.";
      description = "HaskellDB requires this driver if HDBC will be used to connect to an ODBC database.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskelldb" or (errorHandler.buildDepError "haskelldb"))
          (hsPkgs."haskelldb-hdbc" or (errorHandler.buildDepError "haskelldb-hdbc"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-odbc" or (errorHandler.buildDepError "HDBC-odbc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = { "DBDirect-hdbc-odbc" = { buildable = true; }; };
      };
    }