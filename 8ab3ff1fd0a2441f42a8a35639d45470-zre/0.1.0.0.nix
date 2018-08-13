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
        name = "zre";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Richard Marko";
      maintainer = "srk@48.io";
      author = "Richard Marko";
      homepage = "";
      url = "";
      synopsis = "ZRE protocol implementation";
      description = "See README.rst";
      buildType = "Simple";
    };
    components = {
      "zre" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.network)
          (hsPkgs.network-info)
          (hsPkgs.network-multicast)
          (hsPkgs.binary)
          (hsPkgs.binary-strict)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.optparse-applicative)
          (hsPkgs.transformers-base)
          (hsPkgs.sockaddr)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.uuid)
          (hsPkgs.zeromq4-haskell)
        ];
      };
      exes = {
        "zre" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.async)
            (hsPkgs.lifted-async)
            (hsPkgs.zre)
          ];
        };
        "mzre" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.lifted-async)
            (hsPkgs.zre)
          ];
        };
        "zreworker" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.monad-control)
            (hsPkgs.lifted-async)
            (hsPkgs.zre)
          ];
        };
        "zgossip_server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.monad-control)
            (hsPkgs.lifted-async)
            (hsPkgs.zre)
          ];
        };
        "zrematch" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.monad-control)
            (hsPkgs.lifted-async)
            (hsPkgs.zre)
          ];
        };
        "zretime" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.lifted-async)
            (hsPkgs.zre)
          ];
        };
        "zrecat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.lifted-async)
            (hsPkgs.zre)
          ];
        };
      };
      tests = {
        "zre-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.zre)
          ];
        };
      };
    };
  }