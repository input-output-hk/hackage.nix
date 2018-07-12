{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rss-conduit";
          version = "0.2.0.2";
        };
        license = "LicenseRef-OtherLicense";
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
        "rss-conduit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.conduit-parse
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.foldl
            hsPkgs.lens-simple
            hsPkgs.mono-traversable
            hsPkgs.parsers
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.time
            hsPkgs.timerep
            hsPkgs.uri-bytestring
            hsPkgs.xml-conduit
            hsPkgs.xml-conduit-parse
            hsPkgs.xml-types
          ];
        };
        tests = {
          "Tests" = {
            depends  = [
              hsPkgs.rss-conduit
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.conduit-parse
              hsPkgs.data-default
              hsPkgs.exceptions
              hsPkgs.hlint
              hsPkgs.lens-simple
              hsPkgs.mono-traversable
              hsPkgs.parsers
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
              hsPkgs.xml-conduit-parse
              hsPkgs.xml-types
            ];
          };
        };
      };
    }