{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "FpMLv53";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2012, Malcolm Wallace";
      maintainer = "author";
      author = "Malcolm Wallace <Malcolm.Wallace@me.com>";
      homepage = "http://www.fpml.org/";
      url = "";
      synopsis = "A binding for the Financial Products Markup Language (v5.3)";
      description = "FpML, the Financial Products Markup Language, is the business\nexchange standard for electronic dealing and processing of\nfinancial derivatives instruments.  It establishes a protocol\nfor sharing information on, and dealing in, swaps, derivatives,\nand structured products.  It is based on XML, the standard\nmeta-language for describing data shared between applications.\nAll categories of over-the-counter (OTC) derivatives will\neventually be incorporated into the standard.\nThis package is an automatically-generated binding to version 5.3 of\nthe FpML standard.  The object-oriented typing discipline of the\noriginal XSD definition of FpML has been translated into Haskell's\nalgebraic types.  Type classes for parsing from, and outputting to,\nXML documents are instantiated for all types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HaXml)
        ];
      };
    };
  }