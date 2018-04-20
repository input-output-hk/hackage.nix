{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsoz";
          version = "0.0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Rodney Lorrimar";
        maintainer = "dev@rodney.id.au";
        author = "Rodney Lorrimar";
        homepage = "https://github.com/rvl/hsoz";
        url = "";
        synopsis = "Iron, Hawk, Oz: Web auth protocols";
        description = "hsoz is a Haskell implementation of the Iron, Hawk, and Oz web\nauthentication protocols. These protocols originate from the OAuth2\nstandardisation process, but are designed to be simpler to implement\nfor the common case of web applications.\n\nThe top-level \"Network.Iron\", \"Network.Hawk\", \"Network.Oz\" modules\ncontain further instructions on their usage. There are also some\nexample server and client programs within the\n<https://github.com/rvl/hsoz project git repository>.";
        buildType = "Simple";
      };
      components = {
        hsoz = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.byteable
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.data-default
            hsPkgs.either
            hsPkgs.errors
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.memory
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.scientific
            hsPkgs.scotty
            hsPkgs.securemem
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.uri-bytestring
            hsPkgs.vault
            hsPkgs.wai
            hsPkgs.warp
          ];
        };
        exes = {
          hsoz-example = {
            depends  = [
              hsPkgs.hsoz
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.data-default
              hsPkgs.http-client
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.lens
              hsPkgs.lucid
              hsPkgs.scotty
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.uri-bytestring
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.wreq
            ];
          };
        };
        tests = {
          hsoz-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsoz
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-golden
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.time
              hsPkgs.data-default
              hsPkgs.wai
              hsPkgs.http-client
              hsPkgs.http-types
            ];
          };
        };
      };
    }