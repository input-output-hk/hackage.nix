{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "keysafe";
          version = "0.20170122";
        };
        license = "AGPL-3.0-only";
        copyright = "2016 Joey Hess";
        maintainer = "Joey Hess <joey@kitenet.net>";
        author = "Joey Hess";
        homepage = "https://keysafe.branchable.com/";
        url = "";
        synopsis = "back up a secret key securely to the cloud";
        description = "Keysafe backs up a secret key to several cloud servers, split up\nso that no one server can access the whole secret by itself.\n\nA password is used to encrypt the data, and it is made expensive\nto decrypt, so password cracking is infeasibly expensive.";
        buildType = "Custom";
      };
      components = {
        exes = {
          "keysafe" = {
            depends  = [
              hsPkgs.secret-sharing
              hsPkgs.argon2
              hsPkgs.raaz
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.deepseq
              hsPkgs.random
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.utf8-string
              hsPkgs.unix
              hsPkgs.filepath
              hsPkgs.split
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.optparse-applicative
              hsPkgs.readline
              hsPkgs.zxcvbn-c
              hsPkgs.servant
              hsPkgs.servant-server
              hsPkgs.servant-client
              hsPkgs.aeson
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.http-client
              hsPkgs.transformers
              hsPkgs.stm
              hsPkgs.socks
              hsPkgs.network
              hsPkgs.token-bucket
              hsPkgs.bloomfilter
              hsPkgs.disk-free-space
              hsPkgs.lifted-base
              hsPkgs.unbounded-delays
              hsPkgs.fast-logger
              hsPkgs.SafeSemaphore
              hsPkgs.async
              hsPkgs.unix-compat
              hsPkgs.exceptions
              hsPkgs.random-shuffle
              hsPkgs.MonadRandom
            ];
          };
        };
      };
    }