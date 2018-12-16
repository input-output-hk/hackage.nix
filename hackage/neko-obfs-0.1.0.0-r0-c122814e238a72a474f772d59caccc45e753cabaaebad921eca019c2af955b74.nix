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
        name = "neko-obfs";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "nfjinjing@gmail.com";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/neko-obfs";
      url = "";
      synopsis = "a TCP tunnel with packet length obfuscation";
      description = "Just another tool that helps accessing the internet";
      buildType = "Simple";
    };
    components = {
      exes = {
        "neko-obfs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.optparse-generic)
            (hsPkgs.pipes)
            (hsPkgs.pipes-attoparsec)
            (hsPkgs.pipes-network)
            (hsPkgs.pipes-safe)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }