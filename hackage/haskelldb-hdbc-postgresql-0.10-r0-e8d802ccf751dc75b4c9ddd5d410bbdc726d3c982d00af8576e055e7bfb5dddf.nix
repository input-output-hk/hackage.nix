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
      specVersion = "0";
      identifier = { name = "haskelldb-hdbc-postgresql"; version = "0.10"; };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "HaskellDB support for the HDBC PostgreSQL driver.";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskelldb" or (errorHandler.buildDepError "haskelldb"))
          (hsPkgs."haskelldb-hdbc" or (errorHandler.buildDepError "haskelldb-hdbc"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
          ];
        buildable = true;
        };
      };
    }