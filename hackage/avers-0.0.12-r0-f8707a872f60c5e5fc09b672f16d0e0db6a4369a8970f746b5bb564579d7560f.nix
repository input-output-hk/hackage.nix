{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "avers";
        version = "0.0.12";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "tomas.carnecky@gmail.com";
      author = "Tomas Carnecky";
      homepage = "";
      url = "";
      synopsis = "empty";
      description = "empty";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.safe)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.MonadRandom)
          (hsPkgs.base16-bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.inflections)
          (hsPkgs.resource-pool)
          (hsPkgs.rethinkdb-client-driver)
          (hsPkgs.scrypt)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.avers)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.hspec)
            (hsPkgs.inflections)
            (hsPkgs.mtl)
            (hsPkgs.resource-pool)
            (hsPkgs.rethinkdb-client-driver)
            (hsPkgs.scrypt)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.avers)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.criterion)
            (hsPkgs.resource-pool)
            (hsPkgs.rethinkdb-client-driver)
            (hsPkgs.network-uri)
            (hsPkgs.text)
          ];
        };
      };
    };
  }