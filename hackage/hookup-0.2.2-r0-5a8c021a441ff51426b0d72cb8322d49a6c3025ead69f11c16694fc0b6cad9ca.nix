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
        name = "hookup";
        version = "0.2.2";
      };
      license = "ISC";
      copyright = "2016 Eric Mertens";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "https://github.com/glguy/irc-core";
      url = "";
      synopsis = "Abstraction over creating network connections with SOCKS5 and TLS";
      description = "This package provides an abstraction for communicating with line-oriented\nnetwork services while abstracting over the use of SOCKS5 and TLS (via OpenSSL)";
      buildType = "Simple";
    };
    components = {
      "hookup" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.HsOpenSSL-x509-system)
        ];
        libs = [ (pkgs."ssl") ];
      };
    };
  }