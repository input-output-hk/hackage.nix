{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "airship";
          version = "0.9.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Tim McGilchrist <timmcgil@gmail.com>, reid@helium.com";
        author = "Reid Draper and Patrick Thomson";
        homepage = "https://github.com/helium/airship/";
        url = "";
        synopsis = "A Webmachine-inspired HTTP library";
        description = "A Webmachine-inspired HTTP library based off ideas from the original Erlang project <https://github.com/webmachine/webmachine>\n\nA number of examples can be found in <https://github.com/helium/airship/tree/master/example> illustrating how to build airship based services.";
        buildType = "Simple";
      };
      components = {
        "airship" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.bytestring-trie
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.cryptohash
            hsPkgs.directory
            hsPkgs.either
            hsPkgs.filepath
            hsPkgs.http-date
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.lifted-base
            hsPkgs.microlens
            hsPkgs.monad-control
            hsPkgs.mime-types
            hsPkgs.mmorph
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.random
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unix
            hsPkgs.unordered-containers
            hsPkgs.wai
            hsPkgs.wai-extra
          ];
        };
        tests = {
          "unit" = {
            depends  = [
              hsPkgs.base
              hsPkgs.airship
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.transformers
              hsPkgs.wai
            ];
          };
        };
      };
    }