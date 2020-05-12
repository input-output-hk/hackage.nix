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
      identifier = { name = "diagrams-pdf"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2013, alpheccar.org         ";
      maintainer = "misc@alpheccar.org";
      author = "alpheccar";
      homepage = "http://www.alpheccar.org";
      url = "";
      synopsis = "PDF backend for diagrams drawing EDSL";
      description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL to PDF\nfiles.  It uses @HPDF@ making it suitable for use on\nany platform.\n\nIt is a very preliminary version where only the\ndiagrams Logo generation has been tested.\n\nThe package provides the following modules:\n\n* \"Diagrams.Backend.Pdf.CmdLine\" - if you're\njust getting started with diagrams, begin here.\n\n* \"Diagrams.Backend.Pdf\" - look at this next.\nThe general API for the HPDF backend.\n\nAdditional documentation can be found in the\nREADME file distributed with the source tarball";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."HPDF" or (errorHandler.buildDepError "HPDF"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }