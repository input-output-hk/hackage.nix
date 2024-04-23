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
      identifier = { name = "HaTeX"; version = "2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danieldiaz@asofilak.es";
      author = "Daniel Diaz";
      homepage = "http://ddiaz.asofilak.es/packages/HaTeX";
      url = "";
      synopsis = "Library for write LaTeX code.";
      description = "You can write LaTeX files using this package.\nSee Text.LaTeX for a brief introduction.\n\nReport any bug or suggestion to the author:\n\ndanieldiaz\\@asofilak.es\n\nAlso, if you have an example where you use HaTeX, you could send it to the same email. Thanks in advance.\n\nChanges from last version:\n\n* Fixed an error displaying HaTeX incorrect version.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."dstring" or (errorHandler.buildDepError "dstring"))
          (hsPkgs."to-string-class" or (errorHandler.buildDepError "to-string-class"))
          (hsPkgs."string-combinators" or (errorHandler.buildDepError "string-combinators"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
    };
  }