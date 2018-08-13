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
        name = "xml-conduit-parse";
        version = "0.2.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral <koral@mailoo.org>";
      author = "koral <koral@mailoo.org>";
      homepage = "https://github.com/k0ral/xml-conduit-parse";
      url = "";
      synopsis = "Streaming XML parser based on conduits.";
      description = "This library provides an alternative, hopefully higher-level implementation for the parsing part of @xml-conduit@.";
      buildType = "Simple";
    };
    components = {
      "xml-conduit-parse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-parse)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.parsers)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-parse)
            (hsPkgs.xml-conduit-parse)
            (hsPkgs.data-default)
            (hsPkgs.hlint)
            (hsPkgs.parsers)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }