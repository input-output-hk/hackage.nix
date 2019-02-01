{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "iri"; version = "0.4"; };
      license = "MIT";
      copyright = "(c) 2017 Nikita Volkov";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
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
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.contravariant)
          (hsPkgs.hashable)
          (hsPkgs.ip)
          (hsPkgs.profunctors)
          (hsPkgs.ptr)
          (hsPkgs.punycode)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-builder)
          (hsPkgs.th-lift)
          (hsPkgs.th-lift-instances)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-builder)
          (hsPkgs.vector-instances)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.iri)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rerebase)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }