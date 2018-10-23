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
        name = "hsyslog-udp";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kostiantyn Rybnikov <konstantine@thoughtleadr.com>";
      author = "Jon Childress <jon@childr.es>";
      homepage = "https://github.com/ThoughtLeadr/hsyslog-udp";
      url = "";
      synopsis = "Log to syslog over a network via UDP";
      description = "Supports <https://tools.ietf.org/html/rfc5424 RFC 5424>,\n<https://tools.ietf.org/html/rfc3164 RFC 3164>, or any\narbitrary protocol.";
      buildType = "Simple";
    };
    components = {
      "hsyslog-udp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hsyslog)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix)
        ];
      };
      tests = {
        "specs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hsyslog-udp)
            (hsPkgs.time)
          ];
        };
      };
    };
  }