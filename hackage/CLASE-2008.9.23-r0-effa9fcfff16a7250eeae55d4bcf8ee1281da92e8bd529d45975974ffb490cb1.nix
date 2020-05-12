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
      identifier = { name = "CLASE"; version = "2008.9.23"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "clase@zonetora.co.uk";
      author = "Tristan Allwood";
      homepage = "http://www.zonetora.co.uk/clase/";
      url = "";
      synopsis = "Cursor Library for A Structured Editor";
      description = "A library to aid the development of structured editors that\nrequire a zipper-like interface to the language being edited.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }