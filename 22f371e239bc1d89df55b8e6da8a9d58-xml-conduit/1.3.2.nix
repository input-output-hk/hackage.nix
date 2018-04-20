{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xml-conduit";
          version = "1.3.2";
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
        xml-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.resourcet
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.xml-types
            hsPkgs.attoparsec
            hsPkgs.blaze-builder
            hsPkgs.transformers
            hsPkgs.data-default
            hsPkgs.monad-control
            hsPkgs.blaze-markup
            hsPkgs.blaze-html
            hsPkgs.deepseq
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.xml-conduit
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.xml-types
              hsPkgs.conduit
              hsPkgs.blaze-markup
              hsPkgs.resourcet
            ];
          };
        };
      };
    }