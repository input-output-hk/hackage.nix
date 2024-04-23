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
      identifier = { name = "bond-haskell-compiler"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 Andrey Sverdlichenko";
      maintainer = "Andrey Sverdlichenko";
      author = "blaze@ruddy.ru";
      homepage = "http://github.com/rblaze/bond-haskell#readme";
      url = "";
      synopsis = "Bond code generator for Haskell";
      description = "Bond is a cross-platform framework for handling schematized\ndata. It supports cross-language de/serialization and\npowerful generic mechanisms for efficiently manipulating\ndata.\n\nThe package contains a command-line compiler/codegen\ntool, named hbc, which is used to generate code for Haskell\nprograms using Bond.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bond" or (errorHandler.buildDepError "bond"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
        ];
        buildable = true;
      };
      exes = {
        "hbc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bond" or (errorHandler.buildDepError "bond"))
            (hsPkgs."bond-haskell-compiler" or (errorHandler.buildDepError "bond-haskell-compiler"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          ];
          buildable = true;
        };
      };
      tests = {
        "bond-haskell-compiler-test" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }