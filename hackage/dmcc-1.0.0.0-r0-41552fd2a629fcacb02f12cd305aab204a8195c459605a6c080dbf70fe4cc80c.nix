{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dmcc";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Max Taldykin, Timofey Cherganov, Dmitry Dzhus, Viacheslav Lotsmanov";
      homepage = "https://github.com/f-me/dmcc#readme";
      url = "";
      synopsis = "AVAYA DMCC API bindings and WebSockets server for AVAYA";
      description = "Partial implementation of CSTA Phase III XML Protocol (ECMA-323) with AVAYA (DMCC 6.3) extensions.";
      buildType = "Simple";
    };
    components = {
      "dmcc" = {
        depends  = [
          (hsPkgs.HsOpenSSL)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.classy-prelude)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.io-streams)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.openssl-streams)
          (hsPkgs.safe-exceptions)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unliftio)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-hamlet)
        ];
      };
      exes = {
        "dmcc-ws" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.classy-prelude)
            (hsPkgs.configurator)
            (hsPkgs.containers)
            (hsPkgs.dmcc)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.random)
            (hsPkgs.safe-exceptions)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers-base)
            (hsPkgs.unix)
            (hsPkgs.unliftio)
            (hsPkgs.websockets)
          ];
        };
      };
    };
  }