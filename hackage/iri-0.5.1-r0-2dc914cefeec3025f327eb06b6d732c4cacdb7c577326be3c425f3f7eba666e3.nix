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
      specVersion = "3.0";
      identifier = { name = "iri"; version = "0.5.1"; };
      license = "MIT";
      copyright = "(c) 2017 Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/iri";
      url = "";
      synopsis = "RFC-based resource identifier library";
      description = "This library provides a universal data model for representation of URI, URL and IRI.\nIt comes packed with parsing, rendering and serialisation functionality.\nIt is implemented in conformance with the RFC-3986 and RFC-3987 specifications and\nis intended as a standard tool for all tasks related to resource identifiers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."iri".components.sublibs.punycode or (errorHandler.buildDepError "iri:punycode"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."ptr" or (errorHandler.buildDepError "ptr"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-builder" or (errorHandler.buildDepError "vector-builder"))
          (hsPkgs."vector-instances" or (errorHandler.buildDepError "vector-instances"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
        ];
        buildable = true;
      };
      sublibs = {
        "punycode" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."iri" or (errorHandler.buildDepError "iri"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }