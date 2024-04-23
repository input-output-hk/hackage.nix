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
      identifier = { name = "barcodes-code128"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2014 David Raymond Christiansen, Galois, Inc.";
      maintainer = "david@davidchristiansen.dk";
      author = "David Raymond Christiansen";
      homepage = "";
      url = "";
      synopsis = "Generate Code 128 barcodes as PDFs";
      description = "A library for generating barcodes in Code 128 in PDF format, either\ndirectly as 'Data.ByteString.Lazy.ByteString's or as drawing commands\nin 'HPDF''s command set.\nCode 128 is described at <http://en.wikipedia.org/wiki/Code_128>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HPDF" or (errorHandler.buildDepError "HPDF"))
        ];
        buildable = true;
      };
    };
  }