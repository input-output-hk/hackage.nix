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
      specVersion = "1.4";
      identifier = { name = "typescript-docs"; version = "0.0.2"; };
      license = "MIT";
      copyright = "(c) DICOM Grid Inc. 2013";
      maintainer = "Phillip Freeman <paf31@cantab.net>";
      author = "Phillip Freeman <paf31@cantab.net>";
      homepage = "http://github.com/paf31/typescript-docs";
      url = "";
      synopsis = "A documentation generator for TypeScript Definition files";
      description = "A documentation generator for TypeScript Definition files";
      buildType = "Simple";
    };
    components = {
      exes = {
        "typescript-docs" = {
          depends = [
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."cmdtheline" or (errorHandler.buildDepError "cmdtheline"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-typescript" or (errorHandler.buildDepError "language-typescript"))
          ];
          buildable = true;
        };
      };
    };
  }