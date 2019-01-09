{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "postmaster"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2004-2010 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://gitorious.org/postmaster";
      url = "";
      synopsis = "Postmaster ESMTP Server";
      description = "Postmaster implements an ESMTP server. Given a configuration,\nit starts up and listens for incoming SMTP connections, handles\nthem, and pipes the accepted e-mail messages into an arbitrary\nlocal mailer of your choice. A good local mailer is Procmail.\nBeyond that, you can configure and modify every little step\nof the SMTP transaction. All the real work is done through\ncall-back functions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "postmaster" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.hsyslog)
            (hsPkgs.hsdns)
            (hsPkgs.hsemail)
            (hsPkgs.hopenssl)
            ];
          libs = [ (pkgs."adns") (pkgs."crypto") ];
          };
        };
      };
    }