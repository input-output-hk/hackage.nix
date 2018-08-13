{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "barcodes-code128";
        version = "0.1.0";
      };
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
      "barcodes-code128" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.HPDF)
        ];
      };
    };
  }