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
      identifier = { name = "hoodle-publish"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hoodle";
      url = "";
      synopsis = "publish hoodle files as a static web site";
      description = "This package provieds a simple tool hoodle-publish which make a static web site from a directory containing hoodle files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hoodle-publish" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."poppler" or (errorHandler.buildDepError "poppler"))
            (hsPkgs."pdf-toolbox-document" or (errorHandler.buildDepError "pdf-toolbox-document"))
            (hsPkgs."pdf-toolbox-core" or (errorHandler.buildDepError "pdf-toolbox-core"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."coroutine-object" or (errorHandler.buildDepError "coroutine-object"))
            (hsPkgs."hoodle-types" or (errorHandler.buildDepError "hoodle-types"))
            (hsPkgs."hoodle-parser" or (errorHandler.buildDepError "hoodle-parser"))
            (hsPkgs."hoodle-render" or (errorHandler.buildDepError "hoodle-render"))
            ];
          buildable = true;
          };
        };
      };
    }