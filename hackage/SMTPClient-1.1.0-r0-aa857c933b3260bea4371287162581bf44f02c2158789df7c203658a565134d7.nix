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
      specVersion = "1.6";
      identifier = {
        name = "SMTPClient";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath 2008-2013, (c) Matthew Elder 2009";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath, Matthew Elder, Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "A simple SMTP client library";
      description = "A simple SMTP client library for applications that want to send emails.\n\nv1.1.0: IPv6 supported properly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hsemail)
          (hsPkgs.network)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.containers)
          (hsPkgs.extensible-exceptions)
        ];
      };
    };
  }