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
      specVersion = "1.4";
      identifier = {
        name = "iptadmin";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2011 Evgeny Tarasov";
      maintainer = "etarasov.ekb@gmail.com";
      author = "Evgeny Tarasov";
      homepage = "http://iptadmin.confmgr.org";
      url = "";
      synopsis = "web-interface for iptables";
      description = "web-interface for iptables with PAM authorization";
      buildType = "Simple";
    };
    components = {
      exes = {
        "iptadmin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.happstack-server)
            (hsPkgs.happstack-state)
            (hsPkgs.happstack-util)
            (hsPkgs.mtl)
            (hsPkgs.safe)
            (hsPkgs.iptables-helpers)
            (hsPkgs.process)
            (hsPkgs.blaze-html)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.pam)
            (hsPkgs.unix)
            (hsPkgs.ConfigFile)
            (hsPkgs.filepath)
            (hsPkgs.network)
            (hsPkgs.hsyslog)
            (hsPkgs.hdaemonize)
          ];
        };
      };
    };
  }