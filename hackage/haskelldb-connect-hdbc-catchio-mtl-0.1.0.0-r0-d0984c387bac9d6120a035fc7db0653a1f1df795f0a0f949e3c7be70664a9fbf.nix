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
      specVersion = "1.8";
      identifier = {
        name = "haskelldb-connect-hdbc-catchio-mtl";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kei Hibino <ex8k.hibino@gmail.com>";
      author = "Kei Hibino <ex8k.hibino@gmail.com>";
      homepage = "http://twitter.com/khibino";
      url = "";
      synopsis = "Bracketed HaskellDB HDBC session using MonadCatchIO-mtl";
      description = "This package includes bracketed HDBC session function\nusing MonadCatchIO-mtl for HaskellDB.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."haskelldb" or (errorHandler.buildDepError "haskelldb"))
          (hsPkgs."haskelldb-connect-hdbc" or (errorHandler.buildDepError "haskelldb-connect-hdbc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
          ];
        buildable = true;
        };
      };
    }