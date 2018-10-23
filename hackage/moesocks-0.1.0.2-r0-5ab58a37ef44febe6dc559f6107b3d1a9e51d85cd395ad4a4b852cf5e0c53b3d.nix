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
        name = "moesocks";
        version = "0.1.0.2";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2015 Jinjing Wang";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/moesocks";
      url = "";
      synopsis = "moe for all";
      description = "A socks5 proxy using the client / server architecture.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "moesocks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.network)
            (hsPkgs.io-streams)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.random)
            (hsPkgs.optparse-applicative)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.transformers)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
          ];
        };
      };
    };
  }