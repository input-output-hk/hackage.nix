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
      identifier = { name = "diagrams-svg"; version = "1.4.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Felipe Lessa, Deepak Jois";
      homepage = "https://diagrams.github.io/";
      url = "";
      synopsis = "SVG backend for diagrams drawing EDSL.";
      description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL to SVG\nfiles.  It uses @lucid-svg@ to be a native\nHaskell backend, making it suitable for use on\nany platform.\n\nThe package provides the following modules:\n\n* \"Diagrams.Backend.SVG.CmdLine\" - if you're\njust getting started with diagrams, begin here.\n\n* \"Diagrams.Backend.SVG\" - look at this next.\nThe general API for the SVG backend.\n\nAdditional documentation can be found in the\nREADME file distributed with the source tarball or\nviewable on GitHub:\n<https://github.com/diagrams/diagrams-svg/blob/master/README.md>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
          (hsPkgs."svg-builder" or (errorHandler.buildDepError "svg-builder"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
    };
  }