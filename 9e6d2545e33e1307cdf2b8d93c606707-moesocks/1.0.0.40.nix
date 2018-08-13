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
        name = "moesocks";
        version = "1.0.0.40";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2015 Jinjing Wang";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/moesocks";
      url = "";
      synopsis = "A functional firewall killer";
      description = "A SOCKS5 proxy using the client / server architecture.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "moesocks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.hslogger)
            (hsPkgs.iproute)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.strict)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }