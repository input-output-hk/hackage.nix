{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "push-notify-ccs"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Marcos Pividori <marcos.pividori@gmail.com>";
      author = "Marcos Pividori, mentored by Michael Snoyman.";
      homepage = "http://gsoc2013cwithmobiledevices.blogspot.com.ar/";
      url = "";
      synopsis = "A server-side library for sending/receiving push notifications through CCS (Google Cloud Messaging).";
      description = "This library offers a simple abstraction for sending/receiving notifications through CCS (XMPP - Google Cloud Messaging)\n\nFor more information and test examples: <http://gsoc2013cwithmobiledevices.blogspot.com.ar/>\n\nGitHub repository: <https://github.com/MarcosPividori/GSoC-Communicating-with-mobile-devices>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cprng-aes" or ((hsPkgs.pkgs-errors).buildDepError "cprng-aes"))
          (hsPkgs."crypto-random" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."pontarius-xmpp" or ((hsPkgs.pkgs-errors).buildDepError "pontarius-xmpp"))
          (hsPkgs."push-notify" or ((hsPkgs.pkgs-errors).buildDepError "push-notify"))
          (hsPkgs."retry" or ((hsPkgs.pkgs-errors).buildDepError "retry"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."tls-extra" or ((hsPkgs.pkgs-errors).buildDepError "tls-extra"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
          ];
        buildable = true;
        };
      };
    }