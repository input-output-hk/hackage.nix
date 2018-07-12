{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      conduit11 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ig";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013-2014 Prowdsponsor";
        maintainer = "Prowdsponsor <opensource@prowdsponsor.com>";
        author = "Felipe Lessa <felipe.lessa@prowdsponsor.com>, JP Moresmau <jpmoresmau@gmail.com>";
        homepage = "https://github.com/prowdsponsor/ig";
        url = "";
        synopsis = "Bindings to Instagram's API.";
        description = "This package exports bindings to Instagram's APIs (see\n<http://instagram.com/developer/>).\n\nWhile we would like to have a complete binding to Instagram's\nAPI, this package is being developed on demand. If you need\nsomething that has not been implemented yet, please send a pull\nrequest or file an issue on GitHub\n(<https://github.com/prowdsponsor/ig/issues>).\n\nA sample Yesod application demonstrating the API can be found at <https://github.com/prowdsponsor/ig-testapp>.";
        buildType = "Simple";
      };
      components = {
        "ig" = {
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
            hsPkgs.aeson
            hsPkgs.time
            hsPkgs.data-default
            hsPkgs.lifted-base
            hsPkgs.unordered-containers
            hsPkgs.crypto-api
            hsPkgs.cryptohash
            hsPkgs.cryptohash-cryptoapi
            hsPkgs.base16-bytestring
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
      };
    }