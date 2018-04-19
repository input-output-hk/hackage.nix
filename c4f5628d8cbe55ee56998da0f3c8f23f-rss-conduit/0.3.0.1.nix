{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rss-conduit";
          version = "0.3.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "koral att mailoo dott org";
        author = "koral";
        homepage = "";
        url = "";
        synopsis = "Streaming parser/renderer for the RSS 2.0 standard.";
        description = "Cf README file.";
        buildType = "Simple";
      };
      components = {
        rss-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.containers
            hsPkgs.safe-exceptions
            hsPkgs.lens-simple
            hsPkgs.mono-traversable
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.time
            hsPkgs.timerep
            hsPkgs.uri-bytestring
            hsPkgs.xml-conduit
            hsPkgs.xml-types
          ];
        };
        tests = {
          Tests = {
            depends  = [
              hsPkgs.rss-conduit
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.data-default
              hsPkgs.safe-exceptions
              hsPkgs.hlint
              hsPkgs.lens-simple
              hsPkgs.mono-traversable
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.resourcet
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.time
              hsPkgs.text
              hsPkgs.uri-bytestring
              hsPkgs.xml-conduit
              hsPkgs.xml-types
            ];
          };
        };
      };
    }