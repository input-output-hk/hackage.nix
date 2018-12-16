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
        name = "moesocks";
        version = "0.1.0.21";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2015 Jinjing Wang";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/moesocks";
      url = "";
      synopsis = "A functional firewall killer";
      description = "A socks5 proxy using the client / server architecture.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "moesocks" = {
          depends = [
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
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.safe)
            (hsPkgs.stm)
            (hsPkgs.strict)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }