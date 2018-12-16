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
        name = "opml-conduit";
        version = "0.5.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral <koral@mailoo.org>";
      author = "koral <koral@mailoo.org>";
      homepage = "https://github.com/k0ral/opml-conduit";
      url = "";
      synopsis = "Streaming parser/renderer for the OPML 2.0 format.";
      description = "This library implements the OPML 2.0 standard (<http://dev.opml.org/spec2.html>) as a 'conduit' parser/renderer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.conduit-parse)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.foldl)
          (hsPkgs.lens-simple)
          (hsPkgs.monoid-subclasses)
          (hsPkgs.mono-traversable)
          (hsPkgs.parsers)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.uri-bytestring)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-conduit-parse)
          (hsPkgs.xml-types)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-parse)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.hlint)
            (hsPkgs.lens-simple)
            (hsPkgs.mono-traversable)
            (hsPkgs.mtl)
            (hsPkgs.opml-conduit)
            (hsPkgs.parsers)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.resourcet)
            (hsPkgs.semigroups)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.uri-bytestring)
            (hsPkgs.xml-conduit-parse)
          ];
        };
      };
    };
  }