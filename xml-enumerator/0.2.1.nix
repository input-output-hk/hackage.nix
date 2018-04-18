{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xml-enumerator";
          version = "0.2.1";
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
        xml-enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.enumerator
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.xml-types
            hsPkgs.attoparsec-text-enumerator
            hsPkgs.attoparsec-text
            hsPkgs.blaze-builder
            hsPkgs.blaze-builder-enumerator
            hsPkgs.transformers
          ];
        };
        exes = {
          runtests = {
            depends  = optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.hspec
            ];
          };
        };
      };
    }