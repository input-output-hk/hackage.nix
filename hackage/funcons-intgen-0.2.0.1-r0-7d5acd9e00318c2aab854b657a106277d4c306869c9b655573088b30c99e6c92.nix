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
      identifier = { name = "funcons-intgen"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 L. Thomas van Binsbergen and Neil Schulthorpe";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>, Neil Sculthorpe <n.a.sculthorpe@swansea.ac.uk>";
      homepage = "http://plancomps.org";
      url = "";
      synopsis = "Generate Funcons interpreters from CBS description files";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cbsc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."funcons-tools" or (errorHandler.buildDepError "funcons-tools"))
            (hsPkgs."gll" or (errorHandler.buildDepError "gll"))
            (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
            (hsPkgs."iml-tools" or (errorHandler.buildDepError "iml-tools"))
            (hsPkgs."funcons-values" or (errorHandler.buildDepError "funcons-values"))
          ];
          buildable = true;
        };
      };
    };
  }