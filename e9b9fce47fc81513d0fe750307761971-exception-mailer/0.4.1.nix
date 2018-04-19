{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "exception-mailer";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Powell <david@drp.id.au>";
        author = "David Powell";
        homepage = "https://github.com/drpowell/exception-mailer";
        url = "";
        synopsis = "Catch all runtime exceptions and send an email";
        description = "This module is designed to be used in production code when\nno runtime exceptions are expected.  This module will catch any\nunexpected runtime exception and send a notification email";
        buildType = "Simple";
      };
      components = {
        exception-mailer = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.mime-mail
            hsPkgs.hslogger
          ];
        };
      };
    }