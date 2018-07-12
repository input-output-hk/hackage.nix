{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mangopay";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Prowdsponsor";
        maintainer = "Prowdsponsor <opensource@prowdsponsor.com>";
        author = "JP Moresmau <jpmoresmau@gmail.com>";
        homepage = "https://github.com/prowdsponsor/mangopay";
        url = "";
        synopsis = "Bindings to the MangoPay API";
        description = "This package provides Haskell bindings to the\n<http://www.mangopay.com/ MangoPay> payment provider.\n\nSee also the @yesod-mangopay@ package.";
        buildType = "Simple";
      };
      components = {
        "mangopay" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.resourcet
            hsPkgs.conduit
            hsPkgs.http-types
            hsPkgs.http-conduit
            hsPkgs.attoparsec
            hsPkgs.attoparsec-conduit
            hsPkgs.aeson
            hsPkgs.time
            hsPkgs.data-default
            hsPkgs.lifted-base
            hsPkgs.unordered-containers
            hsPkgs.base16-bytestring
            hsPkgs.utf8-string
            hsPkgs.base64-bytestring
            hsPkgs.case-insensitive
            hsPkgs.monad-logger
            hsPkgs.vector
            hsPkgs.template-haskell
          ];
        };
        exes = {
          "mangopay-passphrase" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mangopay
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.monad-control
              hsPkgs.resourcet
              hsPkgs.conduit
              hsPkgs.http-types
              hsPkgs.http-conduit
              hsPkgs.attoparsec
              hsPkgs.attoparsec-conduit
              hsPkgs.aeson
              hsPkgs.time
              hsPkgs.data-default
              hsPkgs.lifted-base
              hsPkgs.unordered-containers
              hsPkgs.base16-bytestring
              hsPkgs.utf8-string
              hsPkgs.case-insensitive
              hsPkgs.monad-logger
              hsPkgs.vector
              hsPkgs.template-haskell
            ];
          };
        };
        tests = {
          "mangopay-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTF
              hsPkgs.mangopay
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.monad-control
              hsPkgs.resourcet
              hsPkgs.conduit
              hsPkgs.http-types
              hsPkgs.http-conduit
              hsPkgs.attoparsec
              hsPkgs.attoparsec-conduit
              hsPkgs.aeson
              hsPkgs.time
              hsPkgs.data-default
              hsPkgs.lifted-base
              hsPkgs.unordered-containers
              hsPkgs.base16-bytestring
              hsPkgs.HUnit
              hsPkgs.utf8-string
              hsPkgs.blaze-builder
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.base64-bytestring
              hsPkgs.case-insensitive
              hsPkgs.monad-logger
              hsPkgs.vector
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }