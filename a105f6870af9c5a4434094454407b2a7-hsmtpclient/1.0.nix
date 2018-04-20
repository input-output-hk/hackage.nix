{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
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
        hsmtpclient = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.old-time
            hsPkgs.directory
            hsPkgs.array
          ];
        };
      };
    }