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
      identifier = { name = "fadno-xml"; version = "1.1.3"; };
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
      "library" = {
        depends = [
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }