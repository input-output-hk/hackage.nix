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
      identifier = { name = "diagrams-postscript"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Ryan Yates";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Postscript backend for diagrams drawing EDSL";
      description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL using Postscript.\n\n* \"Diagrams.Backend.Postscript.CmdLine\" - Provides\nthe \"defaultMain\" interface to render a diagram\nbased on command line options.\n\n* \"Diagrams.Backend.Postscript\" - Provides the\ngeneral API for rendering diagrams using the\nPostscript backend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      };
    }