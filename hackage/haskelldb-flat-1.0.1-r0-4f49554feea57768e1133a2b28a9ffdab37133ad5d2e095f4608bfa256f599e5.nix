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
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "haskelldb-flat"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert";
      maintainer = "Maintainer: haskelldb-users@lists.sourceforge.net";
      author = "Bjorn Bringert";
      homepage = "https://github.com/m4dc4p/haskelldb";
      url = "";
      synopsis = "An experimental HaskellDB back-end in pure Haskell (no SQL)";
      description = "This is a very experimental HaskellDB back-end which is written in pure Haskell\nand doesn't use SQL. It stores the database in a file. Using this with\nconcurrent writes leads to data loss. This back-end does not support transactions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskelldb" or (errorHandler.buildDepError "haskelldb"))
        ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
      exes = { "DBDirect-flat" = { buildable = true; }; };
    };
  }