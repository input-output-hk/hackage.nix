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
        name = "hsyslog-tcp";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Ömer Sinan Ağacan";
      maintainer = "omeragacan@gmail.com";
      author = "Ömer Sinan Ağacan";
      homepage = "https://github.com/osa1/hsyslog-tcp#readme";
      url = "";
      synopsis = "syslog over TCP";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hsyslog)
          (hsPkgs.hsyslog-udp)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }