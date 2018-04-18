{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diplomacy-server";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aovieth@gmail.com";
        author = "Alexander Vieth";
        homepage = "https://github.com/avieth/diplomacy-server";
        url = "";
        synopsis = "Play Diplomacy over HTTP";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          diplomacy-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.diplomacy
              hsPkgs.TypeNat
              hsPkgs.hourglass
              hsPkgs.rest-core
              hsPkgs.rest-wai
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.warp-tls
              hsPkgs.optparse-applicative
              hsPkgs.transformers-compat
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.json-schema
              hsPkgs.mtl
              hsPkgs.Stream
              hsPkgs.deepseq
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.random
              hsPkgs.parsec
            ];
          };
        };
      };
    }