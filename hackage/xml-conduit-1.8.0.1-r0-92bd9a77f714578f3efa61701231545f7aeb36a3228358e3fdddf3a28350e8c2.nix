{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "xml-conduit";
        version = "1.8.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>, Aristid Breitkreuz <aristidb@googlemail.com>";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "Pure-Haskell utilities for dealing with XML with the conduit package.";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/xml-conduit>.";
      buildType = "Simple";
    };
    components = {
      "xml-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.resourcet)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.xml-types)
          (hsPkgs.attoparsec)
          (hsPkgs.transformers)
          (hsPkgs.data-default-class)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-html)
          (hsPkgs.deepseq)
        ];
      };
      tests = {
        "unit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.xml-conduit)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.xml-types)
            (hsPkgs.conduit)
            (hsPkgs.blaze-markup)
            (hsPkgs.resourcet)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }