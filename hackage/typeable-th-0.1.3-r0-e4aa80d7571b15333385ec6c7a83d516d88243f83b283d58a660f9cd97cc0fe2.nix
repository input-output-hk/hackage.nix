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
      specVersion = "1.10";
      identifier = { name = "typeable-th"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Benno Fünfstück";
      maintainer = "benno.fuenfstueck@gmail.com";
      author = "Benno Fünfstück";
      homepage = "http://github.com/bennofs/typeable-th";
      url = "";
      synopsis = "Automatic deriving of TypeableN instances with Template Haskell";
      description = "This package provides template haskell functions for deriving\nTypeableN instances for types of every kind, selecting the best\nN that is possible.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "compile-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typeable-th" or (errorHandler.buildDepError "typeable-th"))
          ];
          buildable = true;
        };
      };
    };
  }