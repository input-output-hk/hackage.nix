{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "netease-fm";
        version = "1.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 foreverbell";
      maintainer = "dql.foreverbell@gmail.com";
      author = "foreverbell";
      homepage = "http://github.com/foreverbell/netease-fm#readme";
      url = "";
      synopsis = "NetEase Cloud Music FM client in Haskell.";
      description = "NetEase Cloud Music FM client.";
      buildType = "Simple";
    };
    components = {
      "netease-fm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.exceptions)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.stm)
          (hsPkgs.async)
          (hsPkgs.data-default-class)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.memory)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.cryptonite)
        ];
      };
      exes = {
        "netease-fm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.stm)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.netease-fm)
          ];
        };
      };
    };
  }