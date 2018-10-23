{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "keysafe";
        version = "0.20160927";
      };
      license = "AGPL-3.0-only";
      copyright = "2016 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "https://joeyh.name/code/keysafe/";
      url = "";
      synopsis = "back up a secret key securely to the cloud";
      description = "Keysafe backs up a secret key to several cloud servers, split up\nso that no one server can access the whole secret by itself.\n\nA password is used to encrypt the data, and it is made expensive\nto decrypt, so password cracking is infeasibly expensive.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "keysafe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.secret-sharing)
            (hsPkgs.raaz)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.unix)
            (hsPkgs.filepath)
            (hsPkgs.split)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.optparse-applicative)
            (hsPkgs.readline)
            (hsPkgs.zxcvbn-c)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.servant-client)
            (hsPkgs.aeson)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.http-client)
            (hsPkgs.transformers)
            (hsPkgs.stm)
            (hsPkgs.socks)
            (hsPkgs.network)
            (hsPkgs.token-bucket)
            (hsPkgs.bloomfilter)
            (hsPkgs.disk-free-space)
            (hsPkgs.lifted-base)
            (hsPkgs.unbounded-delays)
            (hsPkgs.fast-logger)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.crypto-random)
            (hsPkgs.async)
            (hsPkgs.unix-compat)
            (hsPkgs.exceptions)
            (hsPkgs.random-shuffle)
            (hsPkgs.MonadRandom)
          ];
          libs = [ (pkgs."argon2") ];
        };
      };
    };
  }