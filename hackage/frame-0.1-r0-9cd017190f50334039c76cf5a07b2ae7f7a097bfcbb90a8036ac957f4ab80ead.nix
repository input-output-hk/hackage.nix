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
      specVersion = "1.2";
      identifier = { name = "frame"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Adam Dunkley";
      maintainer = "\"Adam Dunkley\" <acd07u@cs.nott.ac.uk>";
      author = "Adam Dunkley";
      homepage = "";
      url = "";
      synopsis = "A simple web framework.";
      description = "A simple web framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."ghc-binary" or (errorHandler.buildDepError "ghc-binary"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."HDBC-odbc" or (errorHandler.buildDepError "HDBC-odbc"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."haskelldb-hdbc-odbc" or (errorHandler.buildDepError "haskelldb-hdbc-odbc"))
          (hsPkgs."haskelldb-hdbc" or (errorHandler.buildDepError "haskelldb-hdbc"))
          (hsPkgs."haskelldb" or (errorHandler.buildDepError "haskelldb"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."happstack-fastcgi" or (errorHandler.buildDepError "happstack-fastcgi"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ];
        buildable = true;
        };
      exes = {
        "frame-shell" = {
          depends = [
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }