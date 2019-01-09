{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; eventlog = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "network-anonymous-i2p"; version = "0.9.0"; };
      license = "MIT";
      copyright = "(c) 2014 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "";
      url = "";
      synopsis = "Haskell API for I2P anonymous networking";
      description = "Haskell API for I2P anonymous networking";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.network-simple)
          (hsPkgs.attoparsec)
          (hsPkgs.network-attoparsec)
          (hsPkgs.exceptions)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.uuid)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          ];
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.uuid)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-attoparsec)
            (hsPkgs.network-anonymous-i2p)
            ];
          };
        };
      };
    }