{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      enable-hlint-test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "atom-conduit";
          version = "0.5.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "koral att mailoo dott org";
        author = "koral";
        homepage = "";
        url = "";
        synopsis = "Streaming parser/renderer for the Atom 1.0 standard (RFC 4287).";
        description = "Please refer to README.";
        buildType = "Simple";
      };
      components = {
        "atom-conduit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.safe-exceptions
            hsPkgs.lens-simple
            hsPkgs.mono-traversable
            hsPkgs.parsers
            hsPkgs.text
            hsPkgs.time
            hsPkgs.timerep
            hsPkgs.uri-bytestring
            hsPkgs.xml-conduit
            hsPkgs.xml-types
          ];
        };
        tests = {
          "Tests" = {
            depends  = [
              hsPkgs.atom-conduit
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.data-default
              hsPkgs.safe-exceptions
              hsPkgs.lens-simple
              hsPkgs.mono-traversable
              hsPkgs.parsers
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
          "hlint" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }