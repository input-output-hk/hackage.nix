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
      specVersion = "1.10";
      identifier = {
        name = "iri";
        version = "0.3";
      };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/iri";
      url = "";
      synopsis = "RFC-based International Resource Identifier library";
      description = "This library provides a universal data model for representation of both URI (URL) and IRI.\nIt comes packed with parsing, rendering and serialisation functionality.\nIt is implemented in conformance with the RFC-3986 and RFC-3987 specifications and\nis intended as a standard tool for all tasks related to resource identifiers.\n\nThe data is represented in Unicode,\nand the API automates all the encoding fuss.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.th-lift-instances)
          (hsPkgs.th-lift)
          (hsPkgs.template-haskell)
          (hsPkgs.unordered-containers)
          (hsPkgs.ptr)
          (hsPkgs.attoparsec)
          (hsPkgs.punycode)
          (hsPkgs.ip)
          (hsPkgs.text)
          (hsPkgs.text-builder)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.vector-builder)
          (hsPkgs.profunctors)
          (hsPkgs.contravariant)
          (hsPkgs.semigroups)
          (hsPkgs.bug)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.iri)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }