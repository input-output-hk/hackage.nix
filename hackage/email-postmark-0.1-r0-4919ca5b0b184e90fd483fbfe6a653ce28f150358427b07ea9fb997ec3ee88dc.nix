{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "email-postmark";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@riseup.net";
      author = "Daniel Patterson";
      homepage = "";
      url = "";
      synopsis = "A simple wrapper to send emails via the api of the service postmark (http://postmarkapp.com/)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "email-postmark" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.HTTP)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
        ];
      };
    };
  }