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
        name = "hsmtpclient";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Massimo Zaniboni <massimo.zaniboni@gmail.com>";
      author = "Massimo Zaniboni <massimo.zaniboni@gmail.com>";
      homepage = "http://code.google.com/p/hsmtpclient/";
      url = "";
      synopsis = "Simple SMTP Client";
      description = "A very simple SMTP Client library for sending emails.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.array)
        ];
      };
    };
  }