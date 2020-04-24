{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "postmaster"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://github.com/peti/postmaster";
      url = "";
      synopsis = "Postmaster ESMTP Server";
      description = "Postmaster implements an ESMTP server. Given a configuration,\nit starts up and listens for incoming SMTP connections, handles\nthem, and pipes the accepted e-mail messages into an arbitrary\nlocal mailer of your choice. A good local mailer is Procmail.\nBeyond that, you can configure and modify every little step\nof the SMTP transaction. All the real work is done through\ncall-back functions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "postmaster" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."hsyslog" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog"))
            (hsPkgs."hsdns" or ((hsPkgs.pkgs-errors).buildDepError "hsdns"))
            (hsPkgs."hsemail" or ((hsPkgs.pkgs-errors).buildDepError "hsemail"))
            (hsPkgs."hopenssl" or ((hsPkgs.pkgs-errors).buildDepError "hopenssl"))
            ];
          libs = [
            (pkgs."adns" or ((hsPkgs.pkgs-errors).sysDepError "adns"))
            (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
            ];
          buildable = true;
          };
        };
      };
    }