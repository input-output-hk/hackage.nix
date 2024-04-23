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
      identifier = { name = "cabal-query"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Max Desyatov";
      maintainer = "Max Desyatov <explicitcall at gmail.com>";
      author = "Max Desyatov";
      homepage = "http://github.com/explicitcall/cabal-query";
      url = "";
      synopsis = "Helpers for quering .cabal files or hackageDB's 00-index.tar";
      description = "This package was written to assist you at finding a set of packages,\nwhich satisfy your needs.  At the moment it doesn't have a standalone executable,\nbut you can do the queries from your Haskell code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
    };
  }