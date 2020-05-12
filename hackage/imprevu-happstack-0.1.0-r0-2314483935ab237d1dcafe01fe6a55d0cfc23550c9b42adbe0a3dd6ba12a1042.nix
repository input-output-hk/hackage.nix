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
      identifier = { name = "imprevu-happstack"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Corentin Dupont";
      maintainer = "Corentin Dupont";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "Imprevu support for Happstack";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."DebugTraceHelpers" or (errorHandler.buildDepError "DebugTraceHelpers"))
          (hsPkgs."imprevu" or (errorHandler.buildDepError "imprevu"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."reform" or (errorHandler.buildDepError "reform"))
          (hsPkgs."reform-blaze" or (errorHandler.buildDepError "reform-blaze"))
          (hsPkgs."reform-happstack" or (errorHandler.buildDepError "reform-happstack"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."monad-extras" or (errorHandler.buildDepError "monad-extras"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."NoTrace" or (errorHandler.buildDepError "NoTrace"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."imprevu-happstack" or (errorHandler.buildDepError "imprevu-happstack"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ];
          buildable = true;
          };
        };
      };
    }