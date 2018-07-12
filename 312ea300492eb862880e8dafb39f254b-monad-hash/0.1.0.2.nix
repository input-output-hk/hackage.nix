{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-hash";
          version = "0.1.0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
        maintainer = "fr33domlover@riseup.net";
        author = "fr33domlover";
        homepage = "http://hub.darcs.net/fr33domlover/monad-hash";
        url = "";
        synopsis = "Monad transformer for incremental hashing";
        description = "If your code reads or writes some data in a streaming fashion, i.e. in\nchunks, you can use this library to compute a hash of the data incrementally.\nThis is good both for constant-memory stream processing and for clean\nreadable code using monads.\n\nSee the module documentation for more details.\n\nSee the test included in the package tarball for a simple usage example.";
        buildType = "Simple";
      };
      components = {
        "monad-hash" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cryptonite
            hsPkgs.exceptions
            hsPkgs.memory
            hsPkgs.transformers
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cryptonite
              hsPkgs.monad-hash
              hsPkgs.transformers
            ];
          };
        };
      };
    }