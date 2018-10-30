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
      specVersion = "1.2";
      identifier = {
        name = "SMTPClient";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "A simple SMTP client";
      description = "A simple SMTP client\n\nDARCS repository:\n<http://blacksapphire.com/SMTPClient/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hsemail)
          (hsPkgs.network)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.containers)
        ];
      };
    };
  }