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
      specVersion = "1.6";
      identifier = {
        name = "xml-enumerator";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michaels@suite-sol.com>";
      author = "Michael Snoyman <michaels@suite-sol.com>";
      homepage = "http://github.com/snoyberg/xml-enumerator";
      url = "";
      synopsis = "Pure-Haskell utilities for dealing with XML with the enumerator package.";
      description = "Provides the ability to parse and render XML in a streaming manner using the enumerator package.";
      buildType = "Simple";
    };
    components = {
      "xml-enumerator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.enumerator)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.xml-types)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-builder-enumerator)
          (hsPkgs.transformers)
        ];
      };
    };
  }