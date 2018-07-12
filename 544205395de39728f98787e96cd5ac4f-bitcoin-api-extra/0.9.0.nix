{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bitcoin-api-extra";
          version = "0.9.0";
        };
        license = "MIT";
        copyright = "(c) 2015 Leon Mergen";
        maintainer = "leon@solatis.com";
        author = "Leon Mergen";
        homepage = "http://www.leonmergen.com/opensource.html";
        url = "";
        synopsis = "Higher level constructs on top of the bitcoin-api package";
        description = "Where `bitcoin-api` focusses solely on interacting with the Bitcoin Core client,\nthis library attempts to provide higher level constructs on top of that API.\nIt provides a collection of algorithms and useful interfaces for communicating\nwith Bitcoin.";
        buildType = "Simple";
      };
      components = {
        "bitcoin-api-extra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.conduit
            hsPkgs.transformers
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.stm-conduit
            hsPkgs.bitcoin-block
            hsPkgs.bitcoin-tx
            hsPkgs.bitcoin-api
          ];
        };
        tests = {
          "test-suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.http-client
              hsPkgs.wreq
              hsPkgs.lens
              hsPkgs.conduit
              hsPkgs.hspec
              hsPkgs.bitcoin-api
              hsPkgs.bitcoin-tx
              hsPkgs.bitcoin-api-extra
            ];
          };
        };
      };
    }