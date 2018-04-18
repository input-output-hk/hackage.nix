{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "breve";
          version = "0.0.1.0";
        };
        license = "MIT";
        copyright = "(C) Michele Guerini Rocco 2015";
        maintainer = "micheleguerinirocco@me.com";
        author = "Rnhmjoj";
        homepage = "https://github.com/rnhmjoj/breve";
        url = "";
        synopsis = "a url shortener";
        description = "A web application that provides a simple interface to shortening\nlong urls creating smaller and easy to remember links.";
        buildType = "Simple";
      };
      components = {
        exes = {
          breve = {
            depends  = [
              hsPkgs.base
              hsPkgs.simple
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.warp
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.hashtables
              hsPkgs.cryptohash
              hsPkgs.binary
              hsPkgs.random
            ];
          };
        };
      };
    }