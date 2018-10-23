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
        name = "opml-conduit";
        version = "0.2.0.1";
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
      "opml-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.hashable-time)
          (hsPkgs.lens)
          (hsPkgs.monoid-subclasses)
          (hsPkgs.mono-traversable)
          (hsPkgs.network-uri)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.unordered-containers)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.hlint)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.network-uri)
            (hsPkgs.opml-conduit)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.xml-conduit)
          ];
        };
      };
    };
  }