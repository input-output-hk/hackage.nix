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
        name = "dtd-types";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gale@sefer.org";
      author = "Yitzchak Gale";
      homepage = "http://projects.haskell.org/dtd/";
      url = "";
      synopsis = "Basic types for representing XML DTDs";
      description = "This package provides types to represent an XML Document Type\nDeclaration (DTD) as defined in W3C specifications\n(<http://www.w3.org/XML/Core/#Publications>). It is intended to be\ncompatible with and extend the set of types in \"Data.XML.Types\"\nprovided by the xml-types package.\n\nFollowing the philosophy of @Data.XML.Types@, the types in this\nmodule are not intended to be a strict and complete representation\nof the model in the W3C specifications; rather, they are intended\nto be convenient and type-safe for the kinds of processing of DTDs\nthat are commonly done in practice. As such, this model is\ncompatible with both Version 1.0 and Version 1.1 of the XML\nspecification.\n\nTherefore, these types are not suitable for type-level validation\nof the syntax of a DTD. For example: these types are more\nlenient than the specs about the characters that are allowed in\nvarious locations in a DTD; entities of various kinds only appear\nas distinct syntactic elements in places where they are commonly\nneeded when processing DTDs; etc.\n\nConditional sections are not represented in these types. They\nshould be handled directly by parsers and renderers, if needed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.xml-types)
        ];
      };
    };
  }