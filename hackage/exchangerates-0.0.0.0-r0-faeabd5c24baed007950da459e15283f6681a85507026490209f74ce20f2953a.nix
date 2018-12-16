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
        name = "exchangerates";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/exchangerates#readme";
      url = "";
      synopsis = "A Haskell client for https://exchangeratesapi.io/";
      description = "Please see the README on Github at <https://github.com/NorfairKing/exchangerates#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.validity)
          (hsPkgs.validity-containers)
          (hsPkgs.validity-time)
          (hsPkgs.yaml)
        ];
      };
      tests = {
        "exchangerates-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exchangerates)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-containers)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-hspec-aeson)
            (hsPkgs.genvalidity-text)
            (hsPkgs.genvalidity-time)
            (hsPkgs.hspec)
            (hsPkgs.http-api-data)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.mtl)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.validity)
            (hsPkgs.validity-containers)
            (hsPkgs.validity-time)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }