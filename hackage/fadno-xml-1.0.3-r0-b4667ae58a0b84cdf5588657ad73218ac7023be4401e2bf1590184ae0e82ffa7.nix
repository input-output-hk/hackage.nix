{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "fadno-xml";
        version = "1.0.3";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "spopejoy@panix.com";
      author = "Stuart Popejoy";
      homepage = "http://github.com/slpopejoy/fadno-xml";
      url = "";
      synopsis = "XML/XSD combinators/schemas/codegen";
      description = "Library for generating code from XML schema files, with\nMusicXml 2.0 schema library included. Includes\nXML \"combinator library\" XParser for consuming xml,\na type model for XSD productions, a type model for\ncodegen, and the code generator.";
      buildType = "Simple";
    };
    components = {
      "fadno-xml" = {
        depends  = [
          (hsPkgs.Decimal)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.xml)
        ];
      };
    };
  }