{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "postmaster"; version = "0.3.3"; };
      license = "LicenseRef-GPL";
      copyright = "Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://github.com/peti/postmaster";
      url = "";
      synopsis = "Postmaster ESMTP Server";
      description = "Postmaster implements an ESMTP server. Given a configuration, it starts up\nand listens for incoming SMTP connections, handles them, and pipes the\naccepted e-mail messages into an arbitrary local mailer of your choice. A\ngood local mailer is Procmail. Beyond that, you can configure and modify\nevery little step of the SMTP transaction. All the real work is done\nthrough call-back functions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "postmaster" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hopenssl)
            (hsPkgs.hsdns)
            (hsPkgs.hsemail)
            (hsPkgs.hsyslog)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }