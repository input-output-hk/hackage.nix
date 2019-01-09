{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "socketson"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "pfiff@hax-f.net";
      author = "Philipp Pfeiffer";
      homepage = "https://github.com/aphorisme/socketson";
      url = "";
      synopsis = "A small websocket backend provider.";
      description = "socketson is technically a small websocket server with a predefined protocol with the intention to be run a backend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.base64-bytestring)
          (hsPkgs.crypto-api)
          (hsPkgs.DRBG)
          (hsPkgs.websockets)
          (hsPkgs.wai-websockets)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.http-types)
          (hsPkgs.aeson)
          (hsPkgs.leveldb-haskell)
          (hsPkgs.cereal)
          (hsPkgs.data-default)
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.mtl)
          ];
        };
      exes = {
        "socketson-sample" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.socketson)
            (hsPkgs.either)
            ];
          };
        "socketson-sample-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.socketson)
            (hsPkgs.network)
            (hsPkgs.websockets)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            ];
          };
        };
      };
    }