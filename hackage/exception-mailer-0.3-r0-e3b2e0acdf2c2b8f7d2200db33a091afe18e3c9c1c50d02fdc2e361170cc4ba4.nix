{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "exception-mailer"; version = "0.3"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mime-mail" or ((hsPkgs.pkgs-errors).buildDepError "mime-mail"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          ];
        buildable = true;
        };
      };
    }