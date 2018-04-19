{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      conduit11 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mangopay";
          version = "1.9.7";
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
        mangopay = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.resourcet
            hsPkgs.http-types
            hsPkgs.http-conduit
            hsPkgs.attoparsec
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
            hsPkgs.country-codes
            hsPkgs.async
            hsPkgs.blaze-builder
            hsPkgs.HUnit
            hsPkgs.wai
            hsPkgs.warp
          ] ++ (if _flags.conduit11
            then [
              hsPkgs.conduit
              hsPkgs.conduit-extra
            ]
            else [
              hsPkgs.conduit
              hsPkgs.attoparsec-conduit
            ]);
        };
        exes = {
          mangopay-passphrase = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.http-conduit
              hsPkgs.monad-logger
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.mangopay
            ];
          };
        };
        tests = {
          mangopay-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.base16-bytestring
              hsPkgs.base64-bytestring
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.conduit
              hsPkgs.data-default
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.HUnit
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.monad-logger
              hsPkgs.resourcet
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.unordered-containers
              hsPkgs.utf8-string
              hsPkgs.vector
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.country-codes
              hsPkgs.HTF
            ] ++ (if _flags.conduit11
              then [ hsPkgs.conduit-extra ]
              else [
                hsPkgs.attoparsec-conduit
              ]);
          };
        };
      };
    }