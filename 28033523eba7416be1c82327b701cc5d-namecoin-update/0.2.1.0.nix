{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "namecoin-update";
          version = "0.2.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (C) Michele Guerini Rocco";
        maintainer = "micheleguerinirocco@me.com";
        author = "rnhmjoj";
        homepage = "";
        url = "";
        synopsis = "Tool to keep namecoin names updated and well";
        description = "A small program that updates the names in a namecoin wallet\nto prevent expiration. It uses the JSON-RPC API provided by\nnamecoind to scan and update the values of the name when needed.\nThe tool is intended to be run regularly, for example from cron.";
        buildType = "Simple";
      };
      components = {
        namecoin-update = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.wreq
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.attoparsec
          ];
        };
        exes = {
          namecoin-update = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.namecoin-update
            ];
          };
        };
      };
    }